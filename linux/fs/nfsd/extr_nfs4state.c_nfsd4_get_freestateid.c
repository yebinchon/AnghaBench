
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fr_stateid; } ;
union nfsd4_op_u {TYPE_1__ free_stateid; } ;
struct nfsd4_compound_state {int dummy; } ;


 int get_stateid (struct nfsd4_compound_state*,int *) ;

void
nfsd4_get_freestateid(struct nfsd4_compound_state *cstate,
  union nfsd4_op_u *u)
{
 get_stateid(cstate, &u->free_stateid.fr_stateid);
}
