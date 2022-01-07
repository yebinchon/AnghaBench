
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOPNOTSUPP ;
 int call_int_hook (int ,int ,char const*) ;
 int inode_copy_up_xattr ;

int security_inode_copy_up_xattr(const char *name)
{
 return call_int_hook(inode_copy_up_xattr, -EOPNOTSUPP, name);
}
