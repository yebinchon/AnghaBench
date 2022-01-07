
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_state_owner {int dummy; } ;
struct nfs4_state {int dummy; } ;


 int nfs40_clear_delegation_stateid (struct nfs4_state*) ;
 int nfs4_open_expired (struct nfs4_state_owner*,struct nfs4_state*) ;
 int nfs_state_clear_open_state_flags (struct nfs4_state*) ;

__attribute__((used)) static int nfs40_open_expired(struct nfs4_state_owner *sp, struct nfs4_state *state)
{

 nfs40_clear_delegation_stateid(state);
 nfs_state_clear_open_state_flags(state);
 return nfs4_open_expired(sp, state);
}
