
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int __detach_mounts (struct dentry*) ;
 int d_mountpoint (struct dentry*) ;

__attribute__((used)) static inline void detach_mounts(struct dentry *dentry)
{
 if (!d_mountpoint(dentry))
  return;
 __detach_mounts(dentry);
}
