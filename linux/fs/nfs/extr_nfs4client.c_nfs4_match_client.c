
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_net {int nfs_client_lock; } ;
struct nfs_client {scalar_t__ rpc_ops; scalar_t__ cl_minorversion; scalar_t__ cl_cons_state; scalar_t__ cl_clientid; int cl_count; } ;


 scalar_t__ NFS_CS_READY ;
 int nfs4_match_client_owner_id (struct nfs_client*,struct nfs_client*) ;
 int nfs_put_client (struct nfs_client*) ;
 int nfs_wait_client_init_complete (struct nfs_client*) ;
 int refcount_inc (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int nfs4_match_client(struct nfs_client *pos, struct nfs_client *new,
        struct nfs_client **prev, struct nfs_net *nn)
{
 int status;

 if (pos->rpc_ops != new->rpc_ops)
  return 1;

 if (pos->cl_minorversion != new->cl_minorversion)
  return 1;





 if (pos->cl_cons_state > NFS_CS_READY) {
  refcount_inc(&pos->cl_count);
  spin_unlock(&nn->nfs_client_lock);

  nfs_put_client(*prev);
  *prev = pos;

  status = nfs_wait_client_init_complete(pos);
  spin_lock(&nn->nfs_client_lock);

  if (status < 0)
   return status;
 }

 if (pos->cl_cons_state != NFS_CS_READY)
  return 1;

 if (pos->cl_clientid != new->cl_clientid)
  return 1;




 if (!nfs4_match_client_owner_id(pos, new))
  return 1;

 return 0;
}
