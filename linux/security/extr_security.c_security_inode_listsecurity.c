
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int IS_PRIVATE (struct inode*) ;
 int call_int_hook (int ,int ,struct inode*,char*,size_t) ;
 int inode_listsecurity ;
 scalar_t__ unlikely (int ) ;

int security_inode_listsecurity(struct inode *inode, char *buffer, size_t buffer_size)
{
 if (unlikely(IS_PRIVATE(inode)))
  return 0;
 return call_int_hook(inode_listsecurity, 0, inode, buffer, buffer_size);
}
