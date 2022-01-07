
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vm_fault_t ;
struct vm_fault {int pgoff; TYPE_1__* vma; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int i_mmap_sem; } ;
struct TYPE_3__ {int vm_file; } ;


 TYPE_2__* F2FS_I (struct inode*) ;
 int down_read (int *) ;
 struct inode* file_inode (int ) ;
 scalar_t__ filemap_fault (struct vm_fault*) ;
 int trace_f2fs_filemap_fault (struct inode*,int ,unsigned long) ;
 int up_read (int *) ;

__attribute__((used)) static vm_fault_t f2fs_filemap_fault(struct vm_fault *vmf)
{
 struct inode *inode = file_inode(vmf->vma->vm_file);
 vm_fault_t ret;

 down_read(&F2FS_I(inode)->i_mmap_sem);
 ret = filemap_fault(vmf);
 up_read(&F2FS_I(inode)->i_mmap_sem);

 trace_f2fs_filemap_fault(inode, vmf->pgoff, (unsigned long)ret);

 return ret;
}
