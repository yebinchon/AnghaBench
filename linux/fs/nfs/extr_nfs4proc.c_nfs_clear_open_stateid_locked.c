
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_state {int inode; int open_stateid; int stateid; int flags; } ;
typedef int nfs4_stateid ;
typedef int fmode_t ;




 int NFS_DELEGATED_STATE ;
 int NFS_OPEN_STATE ;
 int NFS_O_RDONLY_STATE ;
 int NFS_O_RDWR_STATE ;
 int NFS_O_WRONLY_STATE ;
 int clear_bit (int ,int *) ;
 int nfs4_stateid_copy (int *,int *) ;
 int nfs4_stateid_is_newer (int *,int *) ;
 scalar_t__ nfs4_stateid_match_other (int *,int *) ;
 int nfs_resync_open_stateid_locked (struct nfs4_state*) ;
 int nfs_state_log_update_open_stateid (struct nfs4_state*) ;
 scalar_t__ test_bit (int ,int *) ;
 int trace_nfs4_open_stateid_update (int ,int *,int ) ;

__attribute__((used)) static void nfs_clear_open_stateid_locked(struct nfs4_state *state,
  nfs4_stateid *stateid, fmode_t fmode)
{
 clear_bit(NFS_O_RDWR_STATE, &state->flags);
 switch (fmode & (129|128)) {
 case 128:
  clear_bit(NFS_O_RDONLY_STATE, &state->flags);
  break;
 case 129:
  clear_bit(NFS_O_WRONLY_STATE, &state->flags);
  break;
 case 0:
  clear_bit(NFS_O_RDONLY_STATE, &state->flags);
  clear_bit(NFS_O_WRONLY_STATE, &state->flags);
  clear_bit(NFS_OPEN_STATE, &state->flags);
 }
 if (stateid == ((void*)0))
  return;

 if (nfs4_stateid_match_other(stateid, &state->open_stateid) &&
     !nfs4_stateid_is_newer(stateid, &state->open_stateid)) {
  nfs_resync_open_stateid_locked(state);
  goto out;
 }
 if (test_bit(NFS_DELEGATED_STATE, &state->flags) == 0)
  nfs4_stateid_copy(&state->stateid, stateid);
 nfs4_stateid_copy(&state->open_stateid, stateid);
 trace_nfs4_open_stateid_update(state->inode, stateid, 0);
out:
 nfs_state_log_update_open_stateid(state);
}
