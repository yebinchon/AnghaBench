
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6_sf_list {struct ip6_sf_list* sf_next; } ;
struct ifmcaddr6 {size_t mca_sfmode; int* mca_sfcount; struct ip6_sf_list* mca_sources; struct ip6_sf_list* mca_tomb; } ;


 size_t MCAST_EXCLUDE ;
 size_t MCAST_INCLUDE ;
 int kfree (struct ip6_sf_list*) ;

__attribute__((used)) static void ip6_mc_clear_src(struct ifmcaddr6 *pmc)
{
 struct ip6_sf_list *psf, *nextpsf;

 for (psf = pmc->mca_tomb; psf; psf = nextpsf) {
  nextpsf = psf->sf_next;
  kfree(psf);
 }
 pmc->mca_tomb = ((void*)0);
 for (psf = pmc->mca_sources; psf; psf = nextpsf) {
  nextpsf = psf->sf_next;
  kfree(psf);
 }
 pmc->mca_sources = ((void*)0);
 pmc->mca_sfmode = MCAST_EXCLUDE;
 pmc->mca_sfcount[MCAST_INCLUDE] = 0;
 pmc->mca_sfcount[MCAST_EXCLUDE] = 1;
}
