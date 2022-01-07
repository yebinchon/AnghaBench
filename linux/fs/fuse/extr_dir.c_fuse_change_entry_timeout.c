
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_entry_out {int entry_valid_nsec; int entry_valid; } ;
struct dentry {int dummy; } ;


 int fuse_dentry_settime (struct dentry*,int ) ;
 int time_to_jiffies (int ,int ) ;

void fuse_change_entry_timeout(struct dentry *entry, struct fuse_entry_out *o)
{
 fuse_dentry_settime(entry,
  time_to_jiffies(o->entry_valid, o->entry_valid_nsec));
}
