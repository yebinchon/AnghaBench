
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct neighbour {int dummy; } ;


 int NETEVENT_NEIGH_UPDATE ;
 int RTM_NEWNEIGH ;
 int __neigh_notify (struct neighbour*,int ,int ,int ) ;
 int call_netevent_notifiers (int ,struct neighbour*) ;

__attribute__((used)) static void neigh_update_notify(struct neighbour *neigh, u32 nlmsg_pid)
{
 call_netevent_notifiers(NETEVENT_NEIGH_UPDATE, neigh);
 __neigh_notify(neigh, RTM_NEWNEIGH, 0, nlmsg_pid);
}
