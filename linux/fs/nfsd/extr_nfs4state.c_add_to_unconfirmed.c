
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsd_net {int * unconf_id_hashtbl; int unconf_name_tree; int client_lock; } ;
struct TYPE_2__ {int cl_id; } ;
struct nfs4_client {int cl_idhash; TYPE_1__ cl_clientid; int cl_flags; int net; } ;


 int NFSD4_CLIENT_CONFIRMED ;
 int add_clp_to_name_tree (struct nfs4_client*,int *) ;
 int clear_bit (int ,int *) ;
 unsigned int clientid_hashval (int ) ;
 int list_add (int *,int *) ;
 int lockdep_assert_held (int *) ;
 struct nfsd_net* net_generic (int ,int ) ;
 int nfsd_net_id ;
 int renew_client_locked (struct nfs4_client*) ;

__attribute__((used)) static void
add_to_unconfirmed(struct nfs4_client *clp)
{
 unsigned int idhashval;
 struct nfsd_net *nn = net_generic(clp->net, nfsd_net_id);

 lockdep_assert_held(&nn->client_lock);

 clear_bit(NFSD4_CLIENT_CONFIRMED, &clp->cl_flags);
 add_clp_to_name_tree(clp, &nn->unconf_name_tree);
 idhashval = clientid_hashval(clp->cl_clientid.cl_id);
 list_add(&clp->cl_idhash, &nn->unconf_id_hashtbl[idhashval]);
 renew_client_locked(clp);
}
