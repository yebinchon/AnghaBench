
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int * vm_ops; } ;
struct inode {int dummy; } ;
struct file {int f_mapping; } ;


 int dprintk (char*,struct file*) ;
 struct inode* file_inode (struct file*) ;
 int generic_file_mmap (struct file*,struct vm_area_struct*) ;
 int nfs_file_vm_ops ;
 int nfs_revalidate_mapping (struct inode*,int ) ;

int
nfs_file_mmap(struct file * file, struct vm_area_struct * vma)
{
 struct inode *inode = file_inode(file);
 int status;

 dprintk("NFS: mmap(%pD2)\n", file);




 status = generic_file_mmap(file, vma);
 if (!status) {
  vma->vm_ops = &nfs_file_vm_ops;
  status = nfs_revalidate_mapping(inode, file->f_mapping);
 }
 return status;
}
