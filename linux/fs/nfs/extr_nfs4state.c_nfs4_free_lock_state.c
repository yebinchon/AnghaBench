
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_server {int lockowner_id; } ;
struct TYPE_2__ {int owner_id; } ;
struct nfs4_lock_state {TYPE_1__ ls_seqid; } ;


 int ida_simple_remove (int *,int ) ;
 int kfree (struct nfs4_lock_state*) ;
 int nfs4_destroy_seqid_counter (TYPE_1__*) ;

void nfs4_free_lock_state(struct nfs_server *server, struct nfs4_lock_state *lsp)
{
 ida_simple_remove(&server->lockowner_id, lsp->ls_seqid.owner_id);
 nfs4_destroy_seqid_counter(&lsp->ls_seqid);
 kfree(lsp);
}
