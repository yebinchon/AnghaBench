
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_fault_t ;
struct vm_fault {TYPE_1__* vma; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int i_mmap_sem; } ;
struct TYPE_3__ {int vm_file; } ;


 TYPE_2__* EXT4_I (struct inode*) ;
 int down_read (int *) ;
 struct inode* file_inode (int ) ;
 int filemap_fault (struct vm_fault*) ;
 int up_read (int *) ;

vm_fault_t ext4_filemap_fault(struct vm_fault *vmf)
{
 struct inode *inode = file_inode(vmf->vma->vm_file);
 vm_fault_t ret;

 down_read(&EXT4_I(inode)->i_mmap_sem);
 ret = filemap_fault(vmf);
 up_read(&EXT4_I(inode)->i_mmap_sem);

 return ret;
}
