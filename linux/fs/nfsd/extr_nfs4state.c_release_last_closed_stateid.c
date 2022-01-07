
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfsd_net {int client_lock; } ;
struct TYPE_4__ {TYPE_1__* so_client; } ;
struct nfs4_openowner {struct nfs4_ol_stateid* oo_last_closed_stid; int oo_close_lru; TYPE_2__ oo_owner; } ;
struct nfs4_ol_stateid {int st_stid; } ;
struct TYPE_3__ {int net; } ;


 int list_del_init (int *) ;
 struct nfsd_net* net_generic (int ,int ) ;
 int nfs4_put_stid (int *) ;
 int nfsd_net_id ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void release_last_closed_stateid(struct nfs4_openowner *oo)
{
 struct nfsd_net *nn = net_generic(oo->oo_owner.so_client->net,
       nfsd_net_id);
 struct nfs4_ol_stateid *s;

 spin_lock(&nn->client_lock);
 s = oo->oo_last_closed_stid;
 if (s) {
  list_del_init(&oo->oo_close_lru);
  oo->oo_last_closed_stid = ((void*)0);
 }
 spin_unlock(&nn->client_lock);
 if (s)
  nfs4_put_stid(&s->st_stid);
}
