
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct neighbour {int nud_state; int timer; } ;


 int NUD_IN_TIMER ;
 scalar_t__ del_timer (int *) ;
 int neigh_release (struct neighbour*) ;

__attribute__((used)) static int neigh_del_timer(struct neighbour *n)
{
 if ((n->nud_state & NUD_IN_TIMER) &&
     del_timer(&n->timer)) {
  neigh_release(n);
  return 1;
 }
 return 0;
}
