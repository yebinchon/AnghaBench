
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_file; } ;
struct hugepage_subpool {int dummy; } ;


 int file_inode (int ) ;
 struct hugepage_subpool* subpool_inode (int ) ;

__attribute__((used)) static inline struct hugepage_subpool *subpool_vma(struct vm_area_struct *vma)
{
 return subpool_inode(file_inode(vma->vm_file));
}
