
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {int vm_mm; } ;
struct TYPE_3__ {struct vm_area_struct** vmas; } ;
struct TYPE_4__ {TYPE_1__ vmacache; } ;


 size_t VMACACHE_HASH (unsigned long) ;
 TYPE_2__* current ;
 scalar_t__ vmacache_valid_mm (int ) ;

void vmacache_update(unsigned long addr, struct vm_area_struct *newvma)
{
 if (vmacache_valid_mm(newvma->vm_mm))
  current->vmacache.vmas[VMACACHE_HASH(addr)] = newvma;
}
