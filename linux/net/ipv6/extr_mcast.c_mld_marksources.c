
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6_sf_list {int sf_gsresp; int sf_addr; struct ip6_sf_list* sf_next; } ;
struct in6_addr {int dummy; } ;
struct ifmcaddr6 {scalar_t__ mca_sfmode; int mca_flags; struct ip6_sf_list* mca_sources; } ;


 int MAF_GSQUERY ;
 scalar_t__ MCAST_EXCLUDE ;
 scalar_t__ ipv6_addr_equal (struct in6_addr const*,int *) ;
 int mld_xmarksources (struct ifmcaddr6*,int,struct in6_addr const*) ;

__attribute__((used)) static bool mld_marksources(struct ifmcaddr6 *pmc, int nsrcs,
       const struct in6_addr *srcs)
{
 struct ip6_sf_list *psf;
 int i, scount;

 if (pmc->mca_sfmode == MCAST_EXCLUDE)
  return mld_xmarksources(pmc, nsrcs, srcs);



 scount = 0;
 for (psf = pmc->mca_sources; psf; psf = psf->sf_next) {
  if (scount == nsrcs)
   break;
  for (i = 0; i < nsrcs; i++) {
   if (ipv6_addr_equal(&srcs[i], &psf->sf_addr)) {
    psf->sf_gsresp = 1;
    scount++;
    break;
   }
  }
 }
 if (!scount) {
  pmc->mca_flags &= ~MAF_GSQUERY;
  return 0;
 }
 pmc->mca_flags |= MAF_GSQUERY;
 return 1;
}
