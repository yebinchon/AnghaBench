
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rose_neigh {scalar_t__ dce_mode; } ;


 int * rose_find_socket (int,struct rose_neigh*) ;
 int * rose_route_free_lci (int,struct rose_neigh*) ;
 int sysctl_rose_maximum_vcs ;

unsigned int rose_new_lci(struct rose_neigh *neigh)
{
 int lci;

 if (neigh->dce_mode) {
  for (lci = 1; lci <= sysctl_rose_maximum_vcs; lci++)
   if (rose_find_socket(lci, neigh) == ((void*)0) && rose_route_free_lci(lci, neigh) == ((void*)0))
    return lci;
 } else {
  for (lci = sysctl_rose_maximum_vcs; lci > 0; lci--)
   if (rose_find_socket(lci, neigh) == ((void*)0) && rose_route_free_lci(lci, neigh) == ((void*)0))
    return lci;
 }

 return 0;
}
