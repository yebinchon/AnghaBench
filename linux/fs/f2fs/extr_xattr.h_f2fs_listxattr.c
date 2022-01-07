
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;
typedef int ssize_t ;


 int EOPNOTSUPP ;

__attribute__((used)) static inline ssize_t f2fs_listxattr(struct dentry *dentry, char *buffer,
  size_t buffer_size)
{
 return -EOPNOTSUPP;
}
