
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_state {int waitq; int flags; } ;


 int NFS_STATE_CHANGE_WAIT ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int wake_up_all (int *) ;

__attribute__((used)) static void nfs_state_log_update_open_stateid(struct nfs4_state *state)
{
 if (test_and_clear_bit(NFS_STATE_CHANGE_WAIT, &state->flags))
  wake_up_all(&state->waitq);
}
