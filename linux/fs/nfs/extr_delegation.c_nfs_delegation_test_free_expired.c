
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_server {TYPE_1__* nfs_client; } ;
struct nfs4_minor_version_ops {int (* test_and_free_expired ) (struct nfs_server*,int *,struct cred const*) ;} ;
struct inode {int dummy; } ;
struct cred {int dummy; } ;
typedef int nfs4_stateid ;
struct TYPE_2__ {struct nfs4_minor_version_ops* cl_mvops; } ;


 int NFS4ERR_BAD_STATEID ;
 int NFS4ERR_EXPIRED ;
 struct nfs_server* NFS_SERVER (struct inode*) ;
 int nfs_remove_bad_delegation (struct inode*,int *) ;
 int stub1 (struct nfs_server*,int *,struct cred const*) ;

__attribute__((used)) static void
nfs_delegation_test_free_expired(struct inode *inode,
  nfs4_stateid *stateid,
  const struct cred *cred)
{
 struct nfs_server *server = NFS_SERVER(inode);
 const struct nfs4_minor_version_ops *ops = server->nfs_client->cl_mvops;
 int status;

 if (!cred)
  return;
 status = ops->test_and_free_expired(server, stateid, cred);
 if (status == -NFS4ERR_EXPIRED || status == -NFS4ERR_BAD_STATEID)
  nfs_remove_bad_delegation(inode, stateid);
}
