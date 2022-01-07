
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int fuse_dentry_settime (struct dentry*,int ) ;

void fuse_invalidate_entry_cache(struct dentry *entry)
{
 fuse_dentry_settime(entry, 0);
}
