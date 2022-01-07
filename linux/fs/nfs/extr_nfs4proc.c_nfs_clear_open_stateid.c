
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfs4_state {TYPE_2__* owner; int flags; int seqlock; } ;
typedef int nfs4_stateid ;
typedef int fmode_t ;
struct TYPE_4__ {TYPE_1__* so_server; } ;
struct TYPE_3__ {int nfs_client; } ;


 int NFS_STATE_RECLAIM_NOGRACE ;
 int nfs4_schedule_state_manager (int ) ;
 scalar_t__ nfs4_state_match_open_stateid_other (struct nfs4_state*,int *) ;
 int nfs_clear_open_stateid_locked (struct nfs4_state*,int *,int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int write_seqlock (int *) ;
 int write_sequnlock (int *) ;

__attribute__((used)) static void nfs_clear_open_stateid(struct nfs4_state *state,
 nfs4_stateid *arg_stateid,
 nfs4_stateid *stateid, fmode_t fmode)
{
 write_seqlock(&state->seqlock);

 if (nfs4_state_match_open_stateid_other(state, arg_stateid))
  nfs_clear_open_stateid_locked(state, stateid, fmode);
 write_sequnlock(&state->seqlock);
 if (test_bit(NFS_STATE_RECLAIM_NOGRACE, &state->flags))
  nfs4_schedule_state_manager(state->owner->so_server->nfs_client);
}
