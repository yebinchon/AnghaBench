
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsd_net {int conf_name_tree; int unconf_name_tree; int * conf_id_hashtbl; int client_lock; } ;
struct TYPE_2__ {int cl_id; } ;
struct nfs4_client {int cl_flags; int cl_namenode; int cl_idhash; int net; TYPE_1__ cl_clientid; } ;


 int NFSD4_CLIENT_CONFIRMED ;
 int add_clp_to_name_tree (struct nfs4_client*,int *) ;
 unsigned int clientid_hashval (int ) ;
 int dprintk (char*,struct nfs4_client*) ;
 int list_move (int *,int *) ;
 int lockdep_assert_held (int *) ;
 struct nfsd_net* net_generic (int ,int ) ;
 int nfsd_net_id ;
 int rb_erase (int *,int *) ;
 int renew_client_locked (struct nfs4_client*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void
move_to_confirmed(struct nfs4_client *clp)
{
 unsigned int idhashval = clientid_hashval(clp->cl_clientid.cl_id);
 struct nfsd_net *nn = net_generic(clp->net, nfsd_net_id);

 lockdep_assert_held(&nn->client_lock);

 dprintk("NFSD: move_to_confirm nfs4_client %p\n", clp);
 list_move(&clp->cl_idhash, &nn->conf_id_hashtbl[idhashval]);
 rb_erase(&clp->cl_namenode, &nn->unconf_name_tree);
 add_clp_to_name_tree(clp, &nn->conf_name_tree);
 set_bit(NFSD4_CLIENT_CONFIRMED, &clp->cl_flags);
 renew_client_locked(clp);
}
