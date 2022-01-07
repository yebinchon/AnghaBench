
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iattr {int dummy; } ;
struct dentry {int dummy; } ;


 int EPERM ;

__attribute__((used)) static int empty_dir_setattr(struct dentry *dentry, struct iattr *attr)
{
 return -EPERM;
}
