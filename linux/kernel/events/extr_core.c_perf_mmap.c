
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct vm_area_struct {int vm_flags; unsigned long vm_end; unsigned long vm_start; scalar_t__ vm_pgoff; TYPE_5__* vm_mm; int * vm_ops; } ;
struct user_struct {int locked_vm; } ;
struct ring_buffer {scalar_t__ aux_pgoff; unsigned long aux_nr_pages; unsigned long nr_pages; long mmap_locked; long aux_mmap_locked; int mmap_count; int mmap_user; int aux_mmap_count; TYPE_2__* user_page; } ;
struct TYPE_9__ {int aux_watermark; int wakeup_watermark; scalar_t__ watermark; scalar_t__ inherit; } ;
struct perf_event {int cpu; TYPE_1__* pmu; int mmap_mutex; int mmap_count; TYPE_4__ attr; struct ring_buffer* rb; TYPE_3__* ctx; } ;
struct file {struct perf_event* private_data; } ;
struct TYPE_10__ {int pinned_vm; } ;
struct TYPE_8__ {int parent_ctx; } ;
struct TYPE_7__ {int aux_size; int aux_offset; } ;
struct TYPE_6__ {int (* event_mapped ) (struct perf_event*,TYPE_5__*) ;} ;


 int CAP_IPC_LOCK ;
 int EINVAL ;
 int ENOMEM ;
 int EPERM ;
 int PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 scalar_t__ READ_ONCE (int ) ;
 int RING_BUFFER_WRITABLE ;
 int RLIMIT_MEMLOCK ;
 int VM_DONTCOPY ;
 int VM_DONTDUMP ;
 int VM_DONTEXPAND ;
 int VM_SHARED ;
 int VM_WRITE ;
 int WARN_ON (int ) ;
 int WARN_ON_ONCE (int ) ;
 int atomic64_add (long,int *) ;
 long atomic64_read (int *) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int atomic_inc_not_zero (int *) ;
 int atomic_long_add (long,int *) ;
 unsigned long atomic_long_read (int *) ;
 int atomic_set (int *,int) ;
 int capable (int ) ;
 struct user_struct* current_user () ;
 int get_current_user () ;
 int is_power_of_2 (unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned long num_online_cpus () ;
 scalar_t__ perf_data_size (struct ring_buffer*) ;
 int perf_event_init_userpage (struct perf_event*) ;
 int perf_event_update_userpage (struct perf_event*) ;
 int perf_mmap_vmops ;
 scalar_t__ perf_paranoid_tracepoint_raw () ;
 struct ring_buffer* rb_alloc (unsigned long,int ,int,int) ;
 int rb_alloc_aux (struct ring_buffer*,struct perf_event*,scalar_t__,unsigned long,int ,int) ;
 scalar_t__ rb_has_aux (struct ring_buffer*) ;
 int ring_buffer_attach (struct perf_event*,struct ring_buffer*) ;
 unsigned long rlimit (int ) ;
 int stub1 (struct perf_event*,TYPE_5__*) ;
 int sysctl_perf_event_mlock ;

__attribute__((used)) static int perf_mmap(struct file *file, struct vm_area_struct *vma)
{
 struct perf_event *event = file->private_data;
 unsigned long user_locked, user_lock_limit;
 struct user_struct *user = current_user();
 unsigned long locked, lock_limit;
 struct ring_buffer *rb = ((void*)0);
 unsigned long vma_size;
 unsigned long nr_pages;
 long user_extra = 0, extra = 0;
 int ret = 0, flags = 0;






 if (event->cpu == -1 && event->attr.inherit)
  return -EINVAL;

 if (!(vma->vm_flags & VM_SHARED))
  return -EINVAL;

 vma_size = vma->vm_end - vma->vm_start;

 if (vma->vm_pgoff == 0) {
  nr_pages = (vma_size / PAGE_SIZE) - 1;
 } else {





  u64 aux_offset, aux_size;

  if (!event->rb)
   return -EINVAL;

  nr_pages = vma_size / PAGE_SIZE;

  mutex_lock(&event->mmap_mutex);
  ret = -EINVAL;

  rb = event->rb;
  if (!rb)
   goto aux_unlock;

  aux_offset = READ_ONCE(rb->user_page->aux_offset);
  aux_size = READ_ONCE(rb->user_page->aux_size);

  if (aux_offset < perf_data_size(rb) + PAGE_SIZE)
   goto aux_unlock;

  if (aux_offset != vma->vm_pgoff << PAGE_SHIFT)
   goto aux_unlock;


  if (rb_has_aux(rb) && rb->aux_pgoff != vma->vm_pgoff)
   goto aux_unlock;

  if (aux_size != vma_size || aux_size != nr_pages * PAGE_SIZE)
   goto aux_unlock;


  if (rb_has_aux(rb) && rb->aux_nr_pages != nr_pages)
   goto aux_unlock;

  if (!is_power_of_2(nr_pages))
   goto aux_unlock;

  if (!atomic_inc_not_zero(&rb->mmap_count))
   goto aux_unlock;

  if (rb_has_aux(rb)) {
   atomic_inc(&rb->aux_mmap_count);
   ret = 0;
   goto unlock;
  }

  atomic_set(&rb->aux_mmap_count, 1);
  user_extra = nr_pages;

  goto accounting;
 }





 if (nr_pages != 0 && !is_power_of_2(nr_pages))
  return -EINVAL;

 if (vma_size != PAGE_SIZE * (1 + nr_pages))
  return -EINVAL;

 WARN_ON_ONCE(event->ctx->parent_ctx);
again:
 mutex_lock(&event->mmap_mutex);
 if (event->rb) {
  if (event->rb->nr_pages != nr_pages) {
   ret = -EINVAL;
   goto unlock;
  }

  if (!atomic_inc_not_zero(&event->rb->mmap_count)) {





   mutex_unlock(&event->mmap_mutex);
   goto again;
  }

  goto unlock;
 }

 user_extra = nr_pages + 1;

accounting:
 user_lock_limit = sysctl_perf_event_mlock >> (PAGE_SHIFT - 10);




 user_lock_limit *= num_online_cpus();

 user_locked = atomic_long_read(&user->locked_vm) + user_extra;

 if (user_locked <= user_lock_limit) {

 } else if (atomic_long_read(&user->locked_vm) >= user_lock_limit) {

  extra = user_extra;
  user_extra = 0;
 } else {




  extra = user_locked - user_lock_limit;
  user_extra -= extra;
 }

 lock_limit = rlimit(RLIMIT_MEMLOCK);
 lock_limit >>= PAGE_SHIFT;
 locked = atomic64_read(&vma->vm_mm->pinned_vm) + extra;

 if ((locked > lock_limit) && perf_paranoid_tracepoint_raw() &&
  !capable(CAP_IPC_LOCK)) {
  ret = -EPERM;
  goto unlock;
 }

 WARN_ON(!rb && event->rb);

 if (vma->vm_flags & VM_WRITE)
  flags |= RING_BUFFER_WRITABLE;

 if (!rb) {
  rb = rb_alloc(nr_pages,
         event->attr.watermark ? event->attr.wakeup_watermark : 0,
         event->cpu, flags);

  if (!rb) {
   ret = -ENOMEM;
   goto unlock;
  }

  atomic_set(&rb->mmap_count, 1);
  rb->mmap_user = get_current_user();
  rb->mmap_locked = extra;

  ring_buffer_attach(event, rb);

  perf_event_init_userpage(event);
  perf_event_update_userpage(event);
 } else {
  ret = rb_alloc_aux(rb, event, vma->vm_pgoff, nr_pages,
       event->attr.aux_watermark, flags);
  if (!ret)
   rb->aux_mmap_locked = extra;
 }

unlock:
 if (!ret) {
  atomic_long_add(user_extra, &user->locked_vm);
  atomic64_add(extra, &vma->vm_mm->pinned_vm);

  atomic_inc(&event->mmap_count);
 } else if (rb) {
  atomic_dec(&rb->mmap_count);
 }
aux_unlock:
 mutex_unlock(&event->mmap_mutex);





 vma->vm_flags |= VM_DONTCOPY | VM_DONTEXPAND | VM_DONTDUMP;
 vma->vm_ops = &perf_mmap_vmops;

 if (event->pmu->event_mapped)
  event->pmu->event_mapped(event, vma->vm_mm);

 return ret;
}
