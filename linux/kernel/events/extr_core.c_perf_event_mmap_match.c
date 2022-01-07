
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int vm_flags; } ;
struct perf_mmap_event {struct vm_area_struct* vma; } ;
struct TYPE_2__ {scalar_t__ mmap2; scalar_t__ mmap; scalar_t__ mmap_data; } ;
struct perf_event {TYPE_1__ attr; } ;


 int VM_EXEC ;

__attribute__((used)) static int perf_event_mmap_match(struct perf_event *event,
     void *data)
{
 struct perf_mmap_event *mmap_event = data;
 struct vm_area_struct *vma = mmap_event->vma;
 int executable = vma->vm_flags & VM_EXEC;

 return (!executable && event->attr.mmap_data) ||
        (executable && (event->attr.mmap || event->attr.mmap2));
}
