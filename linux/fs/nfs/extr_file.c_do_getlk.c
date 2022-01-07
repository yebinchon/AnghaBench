
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file_lock {unsigned int fl_type; } ;
struct file {TYPE_1__* f_mapping; } ;
struct TYPE_4__ {int (* lock ) (struct file*,int,struct file_lock*) ;scalar_t__ (* have_delegation ) (struct inode*,int ) ;} ;
struct TYPE_3__ {struct inode* host; } ;


 int FMODE_READ ;
 unsigned int F_UNLCK ;
 TYPE_2__* NFS_PROTO (struct inode*) ;
 int posix_test_lock (struct file*,struct file_lock*) ;
 scalar_t__ stub1 (struct inode*,int ) ;
 int stub2 (struct file*,int,struct file_lock*) ;

__attribute__((used)) static int
do_getlk(struct file *filp, int cmd, struct file_lock *fl, int is_local)
{
 struct inode *inode = filp->f_mapping->host;
 int status = 0;
 unsigned int saved_type = fl->fl_type;


 posix_test_lock(filp, fl);
 if (fl->fl_type != F_UNLCK) {

  goto out;
 }
 fl->fl_type = saved_type;

 if (NFS_PROTO(inode)->have_delegation(inode, FMODE_READ))
  goto out_noconflict;

 if (is_local)
  goto out_noconflict;

 status = NFS_PROTO(inode)->lock(filp, cmd, fl);
out:
 return status;
out_noconflict:
 fl->fl_type = F_UNLCK;
 goto out;
}
