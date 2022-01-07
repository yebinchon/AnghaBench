
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfsd_net {int reclaim_str_hashtbl_size; } ;
struct TYPE_4__ {struct nfs4_client_reclaim* data; } ;
struct TYPE_3__ {struct nfs4_client_reclaim* data; } ;
struct nfs4_client_reclaim {TYPE_2__ cr_princhash; TYPE_1__ cr_name; int cr_strhash; } ;


 int kfree (struct nfs4_client_reclaim*) ;
 int list_del (int *) ;

void
nfs4_remove_reclaim_record(struct nfs4_client_reclaim *crp, struct nfsd_net *nn)
{
 list_del(&crp->cr_strhash);
 kfree(crp->cr_name.data);
 kfree(crp->cr_princhash.data);
 kfree(crp);
 nn->reclaim_str_hashtbl_size--;
}
