
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_client {int cl_state; } ;
struct nfs4_state {TYPE_1__* owner; int flags; } ;
struct TYPE_2__ {int so_flags; } ;


 int NFS4CLNT_RECLAIM_NOGRACE ;
 int NFS_OWNER_RECLAIM_NOGRACE ;
 int NFS_STATE_RECLAIM_NOGRACE ;
 int NFS_STATE_RECLAIM_REBOOT ;
 int clear_bit (int ,int *) ;
 int nfs4_valid_open_stateid (struct nfs4_state*) ;
 int set_bit (int ,int *) ;

int nfs4_state_mark_reclaim_nograce(struct nfs_client *clp, struct nfs4_state *state)
{
 if (!nfs4_valid_open_stateid(state))
  return 0;
 set_bit(NFS_STATE_RECLAIM_NOGRACE, &state->flags);
 clear_bit(NFS_STATE_RECLAIM_REBOOT, &state->flags);
 set_bit(NFS_OWNER_RECLAIM_NOGRACE, &state->owner->so_flags);
 set_bit(NFS4CLNT_RECLAIM_NOGRACE, &clp->cl_state);
 return 1;
}
