
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eventpoll {int ovflist; } ;
struct epitem {int next; struct eventpoll* ep; } ;


 scalar_t__ EP_UNACTIVE_PTR ;
 scalar_t__ cmpxchg (int *,scalar_t__,int *) ;
 int xchg (int *,struct epitem*) ;

__attribute__((used)) static inline bool chain_epi_lockless(struct epitem *epi)
{
 struct eventpoll *ep = epi->ep;


 if (cmpxchg(&epi->next, EP_UNACTIVE_PTR, ((void*)0)) != EP_UNACTIVE_PTR)
  return 0;


 epi->next = xchg(&ep->ovflist, epi);

 return 1;
}
