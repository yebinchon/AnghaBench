
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct inode {int dummy; } ;


 int EOPNOTSUPP ;
 int IS_PRIVATE (struct inode*) ;
 int call_int_hook (int ,int,struct inode*,struct inode*,struct qstr const*,char const**,void**,size_t*) ;
 int inode_init_security ;
 scalar_t__ unlikely (int ) ;

int security_old_inode_init_security(struct inode *inode, struct inode *dir,
         const struct qstr *qstr, const char **name,
         void **value, size_t *len)
{
 if (unlikely(IS_PRIVATE(inode)))
  return -EOPNOTSUPP;
 return call_int_hook(inode_init_security, -EOPNOTSUPP, inode, dir,
        qstr, name, value, len);
}
