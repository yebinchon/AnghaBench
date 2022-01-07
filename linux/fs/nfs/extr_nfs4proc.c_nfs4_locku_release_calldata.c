
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int seqid; } ;
struct nfs4_unlockdata {int ctx; int l_ctx; int lsp; TYPE_1__ arg; } ;


 int kfree (struct nfs4_unlockdata*) ;
 int nfs4_put_lock_state (int ) ;
 int nfs_free_seqid (int ) ;
 int nfs_put_lock_context (int ) ;
 int put_nfs_open_context (int ) ;

__attribute__((used)) static void nfs4_locku_release_calldata(void *data)
{
 struct nfs4_unlockdata *calldata = data;
 nfs_free_seqid(calldata->arg.seqid);
 nfs4_put_lock_state(calldata->lsp);
 nfs_put_lock_context(calldata->l_ctx);
 put_nfs_open_context(calldata->ctx);
 kfree(calldata);
}
