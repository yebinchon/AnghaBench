
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ vm_fault_t ;
struct vm_fault {int flags; int pgoff; TYPE_3__* page; TYPE_2__* vma; } ;
struct ring_buffer {int dummy; } ;
struct perf_event {int rb; } ;
struct TYPE_7__ {int index; int mapping; } ;
struct TYPE_6__ {TYPE_1__* vm_file; } ;
struct TYPE_5__ {int f_mapping; struct perf_event* private_data; } ;


 int FAULT_FLAG_MKWRITE ;
 int FAULT_FLAG_WRITE ;
 scalar_t__ VM_FAULT_SIGBUS ;
 int get_page (TYPE_3__*) ;
 TYPE_3__* perf_mmap_to_page (struct ring_buffer*,int ) ;
 struct ring_buffer* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static vm_fault_t perf_mmap_fault(struct vm_fault *vmf)
{
 struct perf_event *event = vmf->vma->vm_file->private_data;
 struct ring_buffer *rb;
 vm_fault_t ret = VM_FAULT_SIGBUS;

 if (vmf->flags & FAULT_FLAG_MKWRITE) {
  if (vmf->pgoff == 0)
   ret = 0;
  return ret;
 }

 rcu_read_lock();
 rb = rcu_dereference(event->rb);
 if (!rb)
  goto unlock;

 if (vmf->pgoff && (vmf->flags & FAULT_FLAG_WRITE))
  goto unlock;

 vmf->page = perf_mmap_to_page(rb, vmf->pgoff);
 if (!vmf->page)
  goto unlock;

 get_page(vmf->page);
 vmf->page->mapping = vmf->vma->vm_file->f_mapping;
 vmf->page->index = vmf->pgoff;

 ret = 0;
unlock:
 rcu_read_unlock();

 return ret;
}
