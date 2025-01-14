
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnfs_layoutdriver_type {int dummy; } ;
struct nfs_client {int dummy; } ;
struct nfs4_deviceid_node {int flags; int node; } ;
struct nfs4_deviceid {int dummy; } ;


 int NFS_DEVICEID_NOCACHE ;
 struct nfs4_deviceid_node* _lookup_deviceid (struct pnfs_layoutdriver_type const*,struct nfs_client const*,struct nfs4_deviceid const*,int ) ;
 int clear_bit (int ,int *) ;
 int hlist_del_init_rcu (int *) ;
 int nfs4_deviceid_hash (struct nfs4_deviceid const*) ;
 int nfs4_deviceid_lock ;
 int nfs4_put_deviceid_node (struct nfs4_deviceid_node*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void
nfs4_delete_deviceid(const struct pnfs_layoutdriver_type *ld,
    const struct nfs_client *clp, const struct nfs4_deviceid *id)
{
 struct nfs4_deviceid_node *d;

 spin_lock(&nfs4_deviceid_lock);
 rcu_read_lock();
 d = _lookup_deviceid(ld, clp, id, nfs4_deviceid_hash(id));
 rcu_read_unlock();
 if (!d) {
  spin_unlock(&nfs4_deviceid_lock);
  return;
 }
 hlist_del_init_rcu(&d->node);
 clear_bit(NFS_DEVICEID_NOCACHE, &d->flags);
 spin_unlock(&nfs4_deviceid_lock);


 nfs4_put_deviceid_node(d);
}
