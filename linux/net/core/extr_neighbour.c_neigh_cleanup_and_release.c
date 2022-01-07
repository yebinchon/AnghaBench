
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct neighbour {TYPE_1__* parms; } ;
struct TYPE_2__ {int (* neigh_cleanup ) (struct neighbour*) ;} ;


 int NETEVENT_NEIGH_UPDATE ;
 int RTM_DELNEIGH ;
 int __neigh_notify (struct neighbour*,int ,int ,int ) ;
 int call_netevent_notifiers (int ,struct neighbour*) ;
 int neigh_release (struct neighbour*) ;
 int stub1 (struct neighbour*) ;
 int trace_neigh_cleanup_and_release (struct neighbour*,int ) ;

__attribute__((used)) static void neigh_cleanup_and_release(struct neighbour *neigh)
{
 if (neigh->parms->neigh_cleanup)
  neigh->parms->neigh_cleanup(neigh);

 trace_neigh_cleanup_and_release(neigh, 0);
 __neigh_notify(neigh, RTM_DELNEIGH, 0, 0);
 call_netevent_notifiers(NETEVENT_NEIGH_UPDATE, neigh);
 neigh_release(neigh);
}
