
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct file_lock {int fl_flags; int fl_file; } ;


 int FL_LEASE ;
 int file_inode (int ) ;
 int nfsd_file_close_inode_sync (int ) ;

__attribute__((used)) static int
nfsd_file_lease_notifier_call(struct notifier_block *nb, unsigned long arg,
       void *data)
{
 struct file_lock *fl = data;


 if (fl->fl_flags & FL_LEASE)
  nfsd_file_close_inode_sync(file_inode(fl->fl_file));
 return 0;
}
