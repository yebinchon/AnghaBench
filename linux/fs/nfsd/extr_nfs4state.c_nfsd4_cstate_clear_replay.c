
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsd4_compound_state {struct nfs4_stateowner* replay_owner; } ;
struct TYPE_2__ {int rp_mutex; } ;
struct nfs4_stateowner {TYPE_1__ so_replay; } ;


 int mutex_unlock (int *) ;
 int nfs4_put_stateowner (struct nfs4_stateowner*) ;

void nfsd4_cstate_clear_replay(struct nfsd4_compound_state *cstate)
{
 struct nfs4_stateowner *so = cstate->replay_owner;

 if (so != ((void*)0)) {
  cstate->replay_owner = ((void*)0);
  mutex_unlock(&so->so_replay.rp_mutex);
  nfs4_put_stateowner(so);
 }
}
