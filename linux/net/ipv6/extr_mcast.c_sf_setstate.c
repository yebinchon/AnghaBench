
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ip6_sf_list {int* sf_count; int sf_crcount; struct ip6_sf_list* sf_next; int sf_addr; scalar_t__ sf_oldin; } ;
struct ifmcaddr6 {int* mca_sfcount; struct ip6_sf_list* mca_tomb; struct ip6_sf_list* mca_sources; TYPE_1__* idev; } ;
struct TYPE_2__ {int mc_qrv; } ;


 int GFP_ATOMIC ;
 size_t MCAST_EXCLUDE ;
 size_t MCAST_INCLUDE ;
 scalar_t__ ipv6_addr_equal (int *,int *) ;
 int kfree (struct ip6_sf_list*) ;
 struct ip6_sf_list* kmalloc (int,int ) ;

__attribute__((used)) static int sf_setstate(struct ifmcaddr6 *pmc)
{
 struct ip6_sf_list *psf, *dpsf;
 int mca_xcount = pmc->mca_sfcount[MCAST_EXCLUDE];
 int qrv = pmc->idev->mc_qrv;
 int new_in, rv;

 rv = 0;
 for (psf = pmc->mca_sources; psf; psf = psf->sf_next) {
  if (pmc->mca_sfcount[MCAST_EXCLUDE]) {
   new_in = mca_xcount == psf->sf_count[MCAST_EXCLUDE] &&
    !psf->sf_count[MCAST_INCLUDE];
  } else
   new_in = psf->sf_count[MCAST_INCLUDE] != 0;
  if (new_in) {
   if (!psf->sf_oldin) {
    struct ip6_sf_list *prev = ((void*)0);

    for (dpsf = pmc->mca_tomb; dpsf;
         dpsf = dpsf->sf_next) {
     if (ipv6_addr_equal(&dpsf->sf_addr,
         &psf->sf_addr))
      break;
     prev = dpsf;
    }
    if (dpsf) {
     if (prev)
      prev->sf_next = dpsf->sf_next;
     else
      pmc->mca_tomb = dpsf->sf_next;
     kfree(dpsf);
    }
    psf->sf_crcount = qrv;
    rv++;
   }
  } else if (psf->sf_oldin) {
   psf->sf_crcount = 0;




   for (dpsf = pmc->mca_tomb; dpsf; dpsf = dpsf->sf_next)
    if (ipv6_addr_equal(&dpsf->sf_addr,
        &psf->sf_addr))
     break;
   if (!dpsf) {
    dpsf = kmalloc(sizeof(*dpsf), GFP_ATOMIC);
    if (!dpsf)
     continue;
    *dpsf = *psf;

    dpsf->sf_next = pmc->mca_tomb;
    pmc->mca_tomb = dpsf;
   }
   dpsf->sf_crcount = qrv;
   rv++;
  }
 }
 return rv;
}
