
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_netobj {int dummy; } ;
struct nfsd_net {int conf_name_tree; int client_lock; } ;
struct nfs4_client {int dummy; } ;


 struct nfs4_client* find_clp_in_name_tree (struct xdr_netobj*,int *) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static struct nfs4_client *
find_confirmed_client_by_name(struct xdr_netobj *name, struct nfsd_net *nn)
{
 lockdep_assert_held(&nn->client_lock);
 return find_clp_in_name_tree(name, &nn->conf_name_tree);
}
