
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int dummy; } ;



__attribute__((used)) static inline int nfs3_proc_setacls(struct inode *inode, struct posix_acl *acl,
  struct posix_acl *dfacl)
{
 return 0;
}
