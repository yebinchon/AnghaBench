
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union fuse_dentry {int time; } ;
typedef int u64 ;
struct dentry {scalar_t__ d_fsdata; } ;



__attribute__((used)) static inline u64 fuse_dentry_time(const struct dentry *entry)
{
 return ((union fuse_dentry *) entry->d_fsdata)->time;
}
