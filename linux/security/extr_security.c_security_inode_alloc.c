
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int call_int_hook (int ,int ,struct inode*) ;
 int inode_alloc_security ;
 int lsm_inode_alloc (struct inode*) ;
 int security_inode_free (struct inode*) ;
 scalar_t__ unlikely (int) ;

int security_inode_alloc(struct inode *inode)
{
 int rc = lsm_inode_alloc(inode);

 if (unlikely(rc))
  return rc;
 rc = call_int_hook(inode_alloc_security, 0, inode);
 if (unlikely(rc))
  security_inode_free(inode);
 return rc;
}
