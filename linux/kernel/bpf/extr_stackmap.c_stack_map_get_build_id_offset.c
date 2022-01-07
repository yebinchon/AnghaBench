
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* u64 ;
typedef int u32 ;
struct vm_area_struct {int vm_pgoff; void* vm_start; } ;
struct TYPE_7__ {int flags; } ;
struct stack_map_irq_work {TYPE_2__ irq_work; TYPE_1__* sem; } ;
struct bpf_stack_build_id {void* status; void* offset; int build_id; void* ip; } ;
struct TYPE_9__ {TYPE_3__* mm; } ;
struct TYPE_6__ {int dep_map; } ;
struct TYPE_8__ {TYPE_1__ mmap_sem; } ;


 int BPF_BUILD_ID_SIZE ;
 void* BPF_STACK_BUILD_ID_IP ;
 void* BPF_STACK_BUILD_ID_VALID ;
 int IRQ_WORK_BUSY ;
 int PAGE_SHIFT ;
 int _RET_IP_ ;
 TYPE_5__* current ;
 scalar_t__ down_read_trylock (TYPE_1__*) ;
 struct vm_area_struct* find_vma (TYPE_3__*,void*) ;
 scalar_t__ in_nmi () ;
 int irq_work_queue (TYPE_2__*) ;
 int memset (int ,int ,int ) ;
 int rwsem_release (int *,int,int ) ;
 scalar_t__ stack_map_get_build_id (struct vm_area_struct*,int ) ;
 struct stack_map_irq_work* this_cpu_ptr (int *) ;
 int up_read (TYPE_1__*) ;
 int up_read_work ;

__attribute__((used)) static void stack_map_get_build_id_offset(struct bpf_stack_build_id *id_offs,
       u64 *ips, u32 trace_nr, bool user)
{
 int i;
 struct vm_area_struct *vma;
 bool irq_work_busy = 0;
 struct stack_map_irq_work *work = ((void*)0);

 if (in_nmi()) {
  work = this_cpu_ptr(&up_read_work);
  if (work->irq_work.flags & IRQ_WORK_BUSY)

   irq_work_busy = 1;
 }
 if (!user || !current || !current->mm || irq_work_busy ||
     down_read_trylock(&current->mm->mmap_sem) == 0) {

  for (i = 0; i < trace_nr; i++) {
   id_offs[i].status = BPF_STACK_BUILD_ID_IP;
   id_offs[i].ip = ips[i];
   memset(id_offs[i].build_id, 0, BPF_BUILD_ID_SIZE);
  }
  return;
 }

 for (i = 0; i < trace_nr; i++) {
  vma = find_vma(current->mm, ips[i]);
  if (!vma || stack_map_get_build_id(vma, id_offs[i].build_id)) {

   id_offs[i].status = BPF_STACK_BUILD_ID_IP;
   id_offs[i].ip = ips[i];
   memset(id_offs[i].build_id, 0, BPF_BUILD_ID_SIZE);
   continue;
  }
  id_offs[i].offset = (vma->vm_pgoff << PAGE_SHIFT) + ips[i]
   - vma->vm_start;
  id_offs[i].status = BPF_STACK_BUILD_ID_VALID;
 }

 if (!work) {
  up_read(&current->mm->mmap_sem);
 } else {
  work->sem = &current->mm->mmap_sem;
  irq_work_queue(&work->irq_work);





  rwsem_release(&current->mm->mmap_sem.dep_map, 1, _RET_IP_);
 }
}
