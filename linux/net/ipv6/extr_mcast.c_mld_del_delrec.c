
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6_sf_list {int sf_crcount; struct ip6_sf_list* sf_next; } ;
struct inet6_dev {int mc_qrv; int mc_lock; struct ifmcaddr6* mc_tomb; } ;
struct in6_addr {int dummy; } ;
struct ifmcaddr6 {scalar_t__ mca_sfmode; int mca_lock; int idev; int mca_crcount; struct ip6_sf_list* mca_sources; struct ip6_sf_list* mca_tomb; struct ifmcaddr6* next; struct in6_addr mca_addr; } ;


 scalar_t__ MCAST_INCLUDE ;
 int in6_dev_put (int ) ;
 int ip6_mc_clear_src (struct ifmcaddr6*) ;
 scalar_t__ ipv6_addr_equal (struct in6_addr*,struct in6_addr*) ;
 int kfree (struct ifmcaddr6*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int swap (struct ip6_sf_list*,struct ip6_sf_list*) ;

__attribute__((used)) static void mld_del_delrec(struct inet6_dev *idev, struct ifmcaddr6 *im)
{
 struct ifmcaddr6 *pmc, *pmc_prev;
 struct ip6_sf_list *psf;
 struct in6_addr *pmca = &im->mca_addr;

 spin_lock_bh(&idev->mc_lock);
 pmc_prev = ((void*)0);
 for (pmc = idev->mc_tomb; pmc; pmc = pmc->next) {
  if (ipv6_addr_equal(&pmc->mca_addr, pmca))
   break;
  pmc_prev = pmc;
 }
 if (pmc) {
  if (pmc_prev)
   pmc_prev->next = pmc->next;
  else
   idev->mc_tomb = pmc->next;
 }
 spin_unlock_bh(&idev->mc_lock);

 spin_lock_bh(&im->mca_lock);
 if (pmc) {
  im->idev = pmc->idev;
  if (im->mca_sfmode == MCAST_INCLUDE) {
   swap(im->mca_tomb, pmc->mca_tomb);
   swap(im->mca_sources, pmc->mca_sources);
   for (psf = im->mca_sources; psf; psf = psf->sf_next)
    psf->sf_crcount = idev->mc_qrv;
  } else {
   im->mca_crcount = idev->mc_qrv;
  }
  in6_dev_put(pmc->idev);
  ip6_mc_clear_src(pmc);
  kfree(pmc);
 }
 spin_unlock_bh(&im->mca_lock);
}
