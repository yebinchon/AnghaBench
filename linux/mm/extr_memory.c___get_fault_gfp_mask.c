
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct file* vm_file; } ;
struct file {int f_mapping; } ;
typedef int gfp_t ;


 int GFP_KERNEL ;
 int __GFP_FS ;
 int __GFP_IO ;
 int mapping_gfp_mask (int ) ;

__attribute__((used)) static gfp_t __get_fault_gfp_mask(struct vm_area_struct *vma)
{
 struct file *vm_file = vma->vm_file;

 if (vm_file)
  return mapping_gfp_mask(vm_file->f_mapping) | __GFP_FS | __GFP_IO;





 return GFP_KERNEL;
}
