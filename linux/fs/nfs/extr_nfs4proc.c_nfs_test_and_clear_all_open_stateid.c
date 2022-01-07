
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfs_client {int dummy; } ;
struct nfs4_state {scalar_t__ n_rdwr; int flags; scalar_t__ n_wronly; scalar_t__ n_rdonly; TYPE_2__* owner; } ;
struct TYPE_4__ {TYPE_1__* so_server; } ;
struct TYPE_3__ {struct nfs_client* nfs_client; } ;


 int NFS_O_RDONLY_STATE ;
 int NFS_O_RDWR_STATE ;
 int NFS_O_WRONLY_STATE ;
 int nfs4_state_mark_reclaim_nograce (struct nfs_client*,struct nfs4_state*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void nfs_test_and_clear_all_open_stateid(struct nfs4_state *state)
{
 struct nfs_client *clp = state->owner->so_server->nfs_client;
 bool need_recover = 0;

 if (test_and_clear_bit(NFS_O_RDONLY_STATE, &state->flags) && state->n_rdonly)
  need_recover = 1;
 if (test_and_clear_bit(NFS_O_WRONLY_STATE, &state->flags) && state->n_wronly)
  need_recover = 1;
 if (test_and_clear_bit(NFS_O_RDWR_STATE, &state->flags) && state->n_rdwr)
  need_recover = 1;
 if (need_recover)
  nfs4_state_mark_reclaim_nograce(clp, state);
}
