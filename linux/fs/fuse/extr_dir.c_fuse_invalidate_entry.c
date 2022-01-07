
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int d_invalidate (struct dentry*) ;
 int fuse_invalidate_entry_cache (struct dentry*) ;

__attribute__((used)) static void fuse_invalidate_entry(struct dentry *entry)
{
 d_invalidate(entry);
 fuse_invalidate_entry_cache(entry);
}
