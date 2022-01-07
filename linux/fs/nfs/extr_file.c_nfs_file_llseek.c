
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef int loff_t ;
struct TYPE_2__ {struct inode* host; } ;


 int SEEK_CUR ;
 int SEEK_SET ;
 int dprintk (char*,struct file*,int ,int) ;
 int generic_file_llseek (struct file*,int ,int) ;
 int nfs_revalidate_file_size (struct inode*,struct file*) ;

loff_t nfs_file_llseek(struct file *filp, loff_t offset, int whence)
{
 dprintk("NFS: llseek file(%pD2, %lld, %d)\n",
   filp, offset, whence);





 if (whence != SEEK_SET && whence != SEEK_CUR) {
  struct inode *inode = filp->f_mapping->host;

  int retval = nfs_revalidate_file_size(inode, filp);
  if (retval < 0)
   return (loff_t)retval;
 }

 return generic_file_llseek(filp, offset, whence);
}
