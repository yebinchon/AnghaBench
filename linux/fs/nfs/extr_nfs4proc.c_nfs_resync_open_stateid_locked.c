
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_state {int flags; scalar_t__ n_rdwr; scalar_t__ n_rdonly; scalar_t__ n_wronly; } ;


 int NFS_OPEN_STATE ;
 int NFS_O_RDONLY_STATE ;
 int NFS_O_RDWR_STATE ;
 int NFS_O_WRONLY_STATE ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void nfs_resync_open_stateid_locked(struct nfs4_state *state)
{
 if (!(state->n_wronly || state->n_rdonly || state->n_rdwr))
  return;
 if (state->n_wronly)
  set_bit(NFS_O_WRONLY_STATE, &state->flags);
 if (state->n_rdonly)
  set_bit(NFS_O_RDONLY_STATE, &state->flags);
 if (state->n_rdwr)
  set_bit(NFS_O_RDWR_STATE, &state->flags);
 set_bit(NFS_OPEN_STATE, &state->flags);
}
