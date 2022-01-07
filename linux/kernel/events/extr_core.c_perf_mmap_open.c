
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vm_area_struct {int vm_mm; scalar_t__ vm_pgoff; TYPE_2__* vm_file; } ;
struct perf_event {TYPE_1__* pmu; TYPE_3__* rb; int mmap_count; } ;
struct TYPE_6__ {int aux_mmap_count; int mmap_count; } ;
struct TYPE_5__ {struct perf_event* private_data; } ;
struct TYPE_4__ {int (* event_mapped ) (struct perf_event*,int ) ;} ;


 int atomic_inc (int *) ;
 int stub1 (struct perf_event*,int ) ;

__attribute__((used)) static void perf_mmap_open(struct vm_area_struct *vma)
{
 struct perf_event *event = vma->vm_file->private_data;

 atomic_inc(&event->mmap_count);
 atomic_inc(&event->rb->mmap_count);

 if (vma->vm_pgoff)
  atomic_inc(&event->rb->aux_mmap_count);

 if (event->pmu->event_mapped)
  event->pmu->event_mapped(event, vma->vm_mm);
}
