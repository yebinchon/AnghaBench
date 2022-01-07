
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct neighbour {int nud_state; int parms; int probes; scalar_t__ updated; scalar_t__ dead; } ;


 scalar_t__ NEIGH_VAR (int ,int ) ;
 int NUD_FAILED ;
 int NUD_INCOMPLETE ;
 int RETRANS_TIME ;
 int atomic_set (int *,int ) ;
 scalar_t__ jiffies ;
 int neigh_add_timer (struct neighbour*,scalar_t__) ;
 int neigh_max_probes (struct neighbour*) ;

void __neigh_set_probe_once(struct neighbour *neigh)
{
 if (neigh->dead)
  return;
 neigh->updated = jiffies;
 if (!(neigh->nud_state & NUD_FAILED))
  return;
 neigh->nud_state = NUD_INCOMPLETE;
 atomic_set(&neigh->probes, neigh_max_probes(neigh));
 neigh_add_timer(neigh,
   jiffies + NEIGH_VAR(neigh->parms, RETRANS_TIME));
}
