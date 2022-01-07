
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_server {TYPE_1__* pnfs_curr_ld; } ;
struct nfs4_deviceid_node {int ref; int node; } ;
struct nfs4_deviceid {int dummy; } ;
struct cred {int dummy; } ;
typedef int gfp_t ;
struct TYPE_2__ {int (* free_deviceid_node ) (struct nfs4_deviceid_node*) ;} ;


 struct nfs4_deviceid_node* __nfs4_find_get_deviceid (struct nfs_server*,struct nfs4_deviceid const*,long) ;
 int atomic_inc (int *) ;
 int hlist_add_head_rcu (int *,int *) ;
 int * nfs4_deviceid_cache ;
 long nfs4_deviceid_hash (struct nfs4_deviceid const*) ;
 int nfs4_deviceid_lock ;
 struct nfs4_deviceid_node* nfs4_get_device_info (struct nfs_server*,struct nfs4_deviceid const*,struct cred const*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct nfs4_deviceid_node*) ;

struct nfs4_deviceid_node *
nfs4_find_get_deviceid(struct nfs_server *server,
  const struct nfs4_deviceid *id, const struct cred *cred,
  gfp_t gfp_mask)
{
 long hash = nfs4_deviceid_hash(id);
 struct nfs4_deviceid_node *d, *new;

 d = __nfs4_find_get_deviceid(server, id, hash);
 if (d)
  return d;

 new = nfs4_get_device_info(server, id, cred, gfp_mask);
 if (!new)
  return new;

 spin_lock(&nfs4_deviceid_lock);
 d = __nfs4_find_get_deviceid(server, id, hash);
 if (d) {
  spin_unlock(&nfs4_deviceid_lock);
  server->pnfs_curr_ld->free_deviceid_node(new);
  return d;
 }
 hlist_add_head_rcu(&new->node, &nfs4_deviceid_cache[hash]);
 atomic_inc(&new->ref);
 spin_unlock(&nfs4_deviceid_lock);

 return new;
}
