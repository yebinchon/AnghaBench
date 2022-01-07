
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_sf_list {int dummy; } ;
struct ip_mc_list {size_t sfmode; int* sfcount; int lock; struct ip_sf_list* sources; struct ip_sf_list* tomb; } ;


 size_t MCAST_EXCLUDE ;
 size_t MCAST_INCLUDE ;
 int ip_sf_list_clear_all (struct ip_sf_list*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void ip_mc_clear_src(struct ip_mc_list *pmc)
{
 struct ip_sf_list *tomb, *sources;

 spin_lock_bh(&pmc->lock);
 tomb = pmc->tomb;
 pmc->tomb = ((void*)0);
 sources = pmc->sources;
 pmc->sources = ((void*)0);
 pmc->sfmode = MCAST_EXCLUDE;
 pmc->sfcount[MCAST_INCLUDE] = 0;
 pmc->sfcount[MCAST_EXCLUDE] = 1;
 spin_unlock_bh(&pmc->lock);

 ip_sf_list_clear_all(tomb);
 ip_sf_list_clear_all(sources);
}
