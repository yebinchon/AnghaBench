
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_writecount; } ;
struct gfs2_inode {int dummy; } ;
struct file {int f_mode; int * private_data; } ;


 int FMODE_WRITE ;
 struct gfs2_inode* GFS2_I (struct inode*) ;
 int gfs2_rsqa_delete (struct gfs2_inode*,int *) ;
 int kfree (int *) ;

__attribute__((used)) static int gfs2_release(struct inode *inode, struct file *file)
{
 struct gfs2_inode *ip = GFS2_I(inode);

 kfree(file->private_data);
 file->private_data = ((void*)0);

 if (!(file->f_mode & FMODE_WRITE))
  return 0;

 gfs2_rsqa_delete(ip, &inode->i_writecount);
 return 0;
}
