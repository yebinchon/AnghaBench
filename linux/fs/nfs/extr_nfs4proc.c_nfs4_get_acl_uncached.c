
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_exception {int interruptible; scalar_t__ retry; } ;
struct inode {int dummy; } ;
typedef scalar_t__ ssize_t ;


 int NFS_SERVER (struct inode*) ;
 scalar_t__ __nfs4_get_acl_uncached (struct inode*,void*,size_t) ;
 scalar_t__ nfs4_handle_exception (int ,scalar_t__,struct nfs4_exception*) ;
 int trace_nfs4_get_acl (struct inode*,scalar_t__) ;

__attribute__((used)) static ssize_t nfs4_get_acl_uncached(struct inode *inode, void *buf, size_t buflen)
{
 struct nfs4_exception exception = {
  .interruptible = 1,
 };
 ssize_t ret;
 do {
  ret = __nfs4_get_acl_uncached(inode, buf, buflen);
  trace_nfs4_get_acl(inode, ret);
  if (ret >= 0)
   break;
  ret = nfs4_handle_exception(NFS_SERVER(inode), ret, &exception);
 } while (exception.retry);
 return ret;
}
