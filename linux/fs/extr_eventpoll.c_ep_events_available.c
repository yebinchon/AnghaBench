
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eventpoll {int ovflist; int rdllist; } ;


 scalar_t__ EP_UNACTIVE_PTR ;
 scalar_t__ READ_ONCE (int ) ;
 int list_empty_careful (int *) ;

__attribute__((used)) static inline int ep_events_available(struct eventpoll *ep)
{
 return !list_empty_careful(&ep->rdllist) ||
  READ_ONCE(ep->ovflist) != EP_UNACTIVE_PTR;
}
