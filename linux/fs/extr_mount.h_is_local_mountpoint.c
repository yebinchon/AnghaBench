
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int __is_local_mountpoint (struct dentry*) ;
 int d_mountpoint (struct dentry*) ;

__attribute__((used)) static inline bool is_local_mountpoint(struct dentry *dentry)
{
 if (!d_mountpoint(dentry))
  return 0;

 return __is_local_mountpoint(dentry);
}
