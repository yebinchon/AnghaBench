
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_file; } ;


 int MAY_WRITE ;
 int file_inode (int ) ;
 scalar_t__ inode_owner_or_capable (int ) ;
 scalar_t__ inode_permission (int ,int ) ;
 scalar_t__ vma_is_anonymous (struct vm_area_struct*) ;

__attribute__((used)) static inline bool can_do_mincore(struct vm_area_struct *vma)
{
 if (vma_is_anonymous(vma))
  return 1;
 if (!vma->vm_file)
  return 0;






 return inode_owner_or_capable(file_inode(vma->vm_file)) ||
  inode_permission(file_inode(vma->vm_file), MAY_WRITE) == 0;
}
