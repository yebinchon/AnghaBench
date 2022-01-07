
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xdr_netobj {int len; int data; } ;
struct nfsd_net {int reclaim_str_hashtbl_size; int * reclaim_str_hashtbl; } ;
struct TYPE_4__ {int len; int data; } ;
struct TYPE_3__ {int len; int data; } ;
struct nfs4_client_reclaim {int * cr_clp; TYPE_2__ cr_princhash; TYPE_1__ cr_name; int cr_strhash; } ;


 int INIT_LIST_HEAD (int *) ;
 struct nfs4_client_reclaim* alloc_reclaim () ;
 unsigned int clientstr_hashval (struct xdr_netobj) ;
 int dprintk (char*,int ,int ) ;
 int list_add (int *,int *) ;

struct nfs4_client_reclaim *
nfs4_client_to_reclaim(struct xdr_netobj name, struct xdr_netobj princhash,
  struct nfsd_net *nn)
{
 unsigned int strhashval;
 struct nfs4_client_reclaim *crp;

 dprintk("NFSD nfs4_client_to_reclaim NAME: %.*s\n", name.len, name.data);
 crp = alloc_reclaim();
 if (crp) {
  strhashval = clientstr_hashval(name);
  INIT_LIST_HEAD(&crp->cr_strhash);
  list_add(&crp->cr_strhash, &nn->reclaim_str_hashtbl[strhashval]);
  crp->cr_name.data = name.data;
  crp->cr_name.len = name.len;
  crp->cr_princhash.data = princhash.data;
  crp->cr_princhash.len = princhash.len;
  crp->cr_clp = ((void*)0);
  nn->reclaim_str_hashtbl_size++;
 }
 return crp;
}
