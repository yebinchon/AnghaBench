
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct neighbour {int nud_state; struct neigh_parms* parms; } ;
struct neigh_parms {int dummy; } ;


 int APP_PROBES ;
 int MCAST_PROBES ;
 int MCAST_REPROBES ;
 int NEIGH_VAR (struct neigh_parms*,int ) ;
 int NUD_PROBE ;
 int UCAST_PROBES ;

__attribute__((used)) static __inline__ int neigh_max_probes(struct neighbour *n)
{
 struct neigh_parms *p = n->parms;
 return NEIGH_VAR(p, UCAST_PROBES) + NEIGH_VAR(p, APP_PROBES) +
        (n->nud_state & NUD_PROBE ? NEIGH_VAR(p, MCAST_REPROBES) :
         NEIGH_VAR(p, MCAST_PROBES));
}
