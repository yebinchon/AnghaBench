
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; int vm_file; } ;


 int MAP_PRIVATE ;
 int OP_FMPROT ;
 int VM_SHARED ;
 int common_mmap (int ,int ,unsigned long,int ) ;

__attribute__((used)) static int apparmor_file_mprotect(struct vm_area_struct *vma,
      unsigned long reqprot, unsigned long prot)
{
 return common_mmap(OP_FMPROT, vma->vm_file, prot,
      !(vma->vm_flags & VM_SHARED) ? MAP_PRIVATE : 0);
}
