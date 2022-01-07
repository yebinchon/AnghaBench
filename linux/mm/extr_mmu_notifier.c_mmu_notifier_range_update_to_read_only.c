
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmu_notifier_range {scalar_t__ event; TYPE_1__* vma; } ;
struct TYPE_2__ {int vm_flags; } ;


 scalar_t__ MMU_NOTIFY_PROTECTION_VMA ;
 int VM_READ ;

bool
mmu_notifier_range_update_to_read_only(const struct mmu_notifier_range *range)
{
 if (!range->vma || range->event != MMU_NOTIFY_PROTECTION_VMA)
  return 0;

 return range->vma->vm_flags & VM_READ;
}
