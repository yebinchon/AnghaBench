
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {int dummy; } ;


 int LIST_HEAD (int ) ;
 int freeme ;
 int nfs4_free_state_owners (int *) ;
 int nfs4_purge_state_owners (struct nfs_server*,int *) ;
 int nfs_server_return_all_delegations (struct nfs_server*) ;
 int unset_pnfs_layoutdriver (struct nfs_server*) ;

__attribute__((used)) static void nfs4_destroy_server(struct nfs_server *server)
{
 LIST_HEAD(freeme);

 nfs_server_return_all_delegations(server);
 unset_pnfs_layoutdriver(server);
 nfs4_purge_state_owners(server, &freeme);
 nfs4_free_state_owners(&freeme);
}
