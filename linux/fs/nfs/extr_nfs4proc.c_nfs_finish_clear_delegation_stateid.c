
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_state {int inode; } ;
typedef int nfs4_stateid ;


 int nfs_remove_bad_delegation (int ,int const*) ;
 int nfs_state_clear_delegation (struct nfs4_state*) ;

__attribute__((used)) static void nfs_finish_clear_delegation_stateid(struct nfs4_state *state,
  const nfs4_stateid *stateid)
{
 nfs_remove_bad_delegation(state->inode, stateid);
 nfs_state_clear_delegation(state);
}
