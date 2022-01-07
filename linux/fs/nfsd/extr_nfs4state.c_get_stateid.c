
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_compound_state {int current_stateid; } ;
typedef int stateid_t ;


 scalar_t__ CURRENT_STATEID (int *) ;
 int CURRENT_STATE_ID_FLAG ;
 scalar_t__ HAS_STATE_ID (struct nfsd4_compound_state*,int ) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void
get_stateid(struct nfsd4_compound_state *cstate, stateid_t *stateid)
{
 if (HAS_STATE_ID(cstate, CURRENT_STATE_ID_FLAG) && CURRENT_STATEID(stateid))
  memcpy(stateid, &cstate->current_stateid, sizeof(stateid_t));
}
