
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct nfs4_state {int open_stateid; int flags; } ;
struct TYPE_6__ {scalar_t__ seqid; } ;
typedef TYPE_1__ nfs4_stateid ;


 int NFS_OPEN_STATE ;
 int NFS_STATE_CHANGE_WAIT ;
 scalar_t__ cpu_to_be32 (int) ;
 scalar_t__ nfs4_stateid_is_newer (TYPE_1__ const*,int *) ;
 int nfs4_stateid_match_other (TYPE_1__ const*,int *) ;
 int nfs_state_log_out_of_order_open_stateid (struct nfs4_state*,TYPE_1__ const*) ;
 int nfs_state_log_update_open_stateid (struct nfs4_state*) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static bool nfs_need_update_open_stateid(struct nfs4_state *state,
  const nfs4_stateid *stateid)
{
 if (test_bit(NFS_OPEN_STATE, &state->flags) == 0 ||
     !nfs4_stateid_match_other(stateid, &state->open_stateid)) {
  if (stateid->seqid == cpu_to_be32(1))
   nfs_state_log_update_open_stateid(state);
  else
   set_bit(NFS_STATE_CHANGE_WAIT, &state->flags);
  return 1;
 }

 if (nfs4_stateid_is_newer(stateid, &state->open_stateid)) {
  nfs_state_log_out_of_order_open_stateid(state, stateid);
  return 1;
 }
 return 0;
}
