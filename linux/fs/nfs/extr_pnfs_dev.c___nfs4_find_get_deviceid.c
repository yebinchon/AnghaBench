
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {int nfs_client; int pnfs_curr_ld; } ;
struct nfs4_deviceid_node {int ref; } ;
struct nfs4_deviceid {int dummy; } ;


 struct nfs4_deviceid_node* _lookup_deviceid (int ,int ,struct nfs4_deviceid const*,long) ;
 int atomic_inc_not_zero (int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static struct nfs4_deviceid_node *
__nfs4_find_get_deviceid(struct nfs_server *server,
  const struct nfs4_deviceid *id, long hash)
{
 struct nfs4_deviceid_node *d;

 rcu_read_lock();
 d = _lookup_deviceid(server->pnfs_curr_ld, server->nfs_client, id,
   hash);
 if (d != ((void*)0) && !atomic_inc_not_zero(&d->ref))
  d = ((void*)0);
 rcu_read_unlock();
 return d;
}
