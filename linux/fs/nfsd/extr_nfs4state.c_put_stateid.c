
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_compound_state {int current_stateid; scalar_t__ minorversion; } ;
typedef int stateid_t ;


 int CURRENT_STATE_ID_FLAG ;
 int SET_STATE_ID (struct nfsd4_compound_state*,int ) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void
put_stateid(struct nfsd4_compound_state *cstate, stateid_t *stateid)
{
 if (cstate->minorversion) {
  memcpy(&cstate->current_stateid, stateid, sizeof(stateid_t));
  SET_STATE_ID(cstate, CURRENT_STATE_ID_FLAG);
 }
}
