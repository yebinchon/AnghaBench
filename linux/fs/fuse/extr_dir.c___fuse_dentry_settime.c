
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union fuse_dentry {int time; } ;
typedef int u64 ;
struct dentry {scalar_t__ d_fsdata; } ;



__attribute__((used)) static inline void __fuse_dentry_settime(struct dentry *dentry, u64 time)
{
 ((union fuse_dentry *) dentry->d_fsdata)->time = time;
}
