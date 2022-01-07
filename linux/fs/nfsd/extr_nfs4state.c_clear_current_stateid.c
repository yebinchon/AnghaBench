
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_compound_state {int dummy; } ;


 int CLEAR_STATE_ID (struct nfsd4_compound_state*,int ) ;
 int CURRENT_STATE_ID_FLAG ;

void
clear_current_stateid(struct nfsd4_compound_state *cstate)
{
 CLEAR_STATE_ID(cstate, CURRENT_STATE_ID_FLAG);
}
