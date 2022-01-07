
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nfsd_net {int del_recall_lru; } ;
struct nfsd4_callback {int dummy; } ;
struct TYPE_6__ {TYPE_2__* sc_file; TYPE_1__* sc_client; } ;
struct nfs4_delegation {scalar_t__ dl_time; int dl_recall_lru; TYPE_3__ dl_stid; } ;
struct TYPE_5__ {int fi_fhandle; } ;
struct TYPE_4__ {int net; } ;


 int block_delegations (int *) ;
 struct nfs4_delegation* cb_to_delegation (struct nfsd4_callback*) ;
 scalar_t__ get_seconds () ;
 int list_add_tail (int *,int *) ;
 struct nfsd_net* net_generic (int ,int ) ;
 int nfsd_net_id ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int state_lock ;

__attribute__((used)) static void nfsd4_cb_recall_prepare(struct nfsd4_callback *cb)
{
 struct nfs4_delegation *dp = cb_to_delegation(cb);
 struct nfsd_net *nn = net_generic(dp->dl_stid.sc_client->net,
       nfsd_net_id);

 block_delegations(&dp->dl_stid.sc_file->fi_fhandle);
 spin_lock(&state_lock);
 if (dp->dl_time == 0) {
  dp->dl_time = get_seconds();
  list_add_tail(&dp->dl_recall_lru, &nn->del_recall_lru);
 }
 spin_unlock(&state_lock);
}
