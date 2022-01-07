
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_server {int dummy; } ;
struct inode {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int cache_validity; } ;


 int ENOENT ;
 int EOPNOTSUPP ;
 TYPE_1__* NFS_I (struct inode*) ;
 int NFS_INO_INVALID_ACL ;
 struct nfs_server* NFS_SERVER (struct inode*) ;
 int nfs4_get_acl_uncached (struct inode*,void*,size_t) ;
 int nfs4_read_cached_acl (struct inode*,void*,size_t) ;
 int nfs4_server_supports_acls (struct nfs_server*) ;
 int nfs_revalidate_inode (struct nfs_server*,struct inode*) ;
 int nfs_zap_acl_cache (struct inode*) ;

__attribute__((used)) static ssize_t nfs4_proc_get_acl(struct inode *inode, void *buf, size_t buflen)
{
 struct nfs_server *server = NFS_SERVER(inode);
 int ret;

 if (!nfs4_server_supports_acls(server))
  return -EOPNOTSUPP;
 ret = nfs_revalidate_inode(server, inode);
 if (ret < 0)
  return ret;
 if (NFS_I(inode)->cache_validity & NFS_INO_INVALID_ACL)
  nfs_zap_acl_cache(inode);
 ret = nfs4_read_cached_acl(inode, buf, buflen);
 if (ret != -ENOENT)


  return ret;
 return nfs4_get_acl_uncached(inode, buf, buflen);
}
