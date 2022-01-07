
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsd4_compound_state {int replay_owner; } ;
struct TYPE_2__ {int rp_mutex; } ;
struct nfs4_stateowner {TYPE_1__ so_replay; } ;


 int mutex_lock (int *) ;
 int nfs4_get_stateowner (struct nfs4_stateowner*) ;
 int nfsd4_has_session (struct nfsd4_compound_state*) ;

__attribute__((used)) static void nfsd4_cstate_assign_replay(struct nfsd4_compound_state *cstate,
  struct nfs4_stateowner *so)
{
 if (!nfsd4_has_session(cstate)) {
  mutex_lock(&so->so_replay.rp_mutex);
  cstate->replay_owner = nfs4_get_stateowner(so);
 }
}
