
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs4_state {int inode; } ;
struct TYPE_2__ {int delegation; } ;


 TYPE_1__* NFS_I (int ) ;
 int nfs_finish_clear_delegation_stateid (struct nfs4_state*,int *) ;
 int * rcu_access_pointer (int ) ;

__attribute__((used)) static void nfs40_clear_delegation_stateid(struct nfs4_state *state)
{
 if (rcu_access_pointer(NFS_I(state->inode)->delegation) != ((void*)0))
  nfs_finish_clear_delegation_stateid(state, ((void*)0));
}
