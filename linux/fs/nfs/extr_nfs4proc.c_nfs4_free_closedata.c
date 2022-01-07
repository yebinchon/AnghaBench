
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct nfs4_state_owner {int dummy; } ;
struct TYPE_8__ {int seqid; } ;
struct TYPE_7__ {int lr_ret; } ;
struct TYPE_6__ {int res; int arg; scalar_t__ roc; } ;
struct nfs4_closedata {TYPE_3__ arg; TYPE_5__* state; TYPE_2__ res; TYPE_1__ lr; } ;
struct TYPE_10__ {TYPE_4__* inode; struct nfs4_state_owner* owner; } ;
struct TYPE_9__ {struct super_block* i_sb; } ;


 int kfree (struct nfs4_closedata*) ;
 int nfs4_put_open_state (TYPE_5__*) ;
 int nfs4_put_state_owner (struct nfs4_state_owner*) ;
 int nfs_free_seqid (int ) ;
 int nfs_sb_deactive (struct super_block*) ;
 int pnfs_roc_release (int *,int *,int ) ;

__attribute__((used)) static void nfs4_free_closedata(void *data)
{
 struct nfs4_closedata *calldata = data;
 struct nfs4_state_owner *sp = calldata->state->owner;
 struct super_block *sb = calldata->state->inode->i_sb;

 if (calldata->lr.roc)
  pnfs_roc_release(&calldata->lr.arg, &calldata->lr.res,
    calldata->res.lr_ret);
 nfs4_put_open_state(calldata->state);
 nfs_free_seqid(calldata->arg.seqid);
 nfs4_put_state_owner(sp);
 nfs_sb_deactive(sb);
 kfree(calldata);
}
