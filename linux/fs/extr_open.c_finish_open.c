
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct dentry* dentry; } ;
struct file {int f_mode; TYPE_1__ f_path; } ;
struct dentry {int dummy; } ;


 int BUG_ON (int) ;
 int FMODE_OPENED ;
 int d_backing_inode (struct dentry*) ;
 int do_dentry_open (struct file*,int ,int (*) (struct inode*,struct file*)) ;

int finish_open(struct file *file, struct dentry *dentry,
  int (*open)(struct inode *, struct file *))
{
 BUG_ON(file->f_mode & FMODE_OPENED);

 file->f_path.dentry = dentry;
 return do_dentry_open(file, d_backing_inode(dentry), open);
}
