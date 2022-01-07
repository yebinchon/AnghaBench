
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6_sf_list {int sf_crcount; struct ip6_sf_list* sf_next; } ;
struct inet6_dev {int mc_lock; struct ifmcaddr6* mc_tomb; int mc_qrv; } ;
struct ifmcaddr6 {scalar_t__ mca_sfmode; struct ifmcaddr6* next; int mca_lock; int mca_crcount; struct ip6_sf_list* mca_sources; int mca_tomb; int mca_addr; int idev; } ;


 int GFP_ATOMIC ;
 scalar_t__ MCAST_INCLUDE ;
 int in6_dev_hold (struct inet6_dev*) ;
 struct ifmcaddr6* kzalloc (int,int ) ;
 int spin_lock_bh (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void mld_add_delrec(struct inet6_dev *idev, struct ifmcaddr6 *im)
{
 struct ifmcaddr6 *pmc;







 pmc = kzalloc(sizeof(*pmc), GFP_ATOMIC);
 if (!pmc)
  return;

 spin_lock_bh(&im->mca_lock);
 spin_lock_init(&pmc->mca_lock);
 pmc->idev = im->idev;
 in6_dev_hold(idev);
 pmc->mca_addr = im->mca_addr;
 pmc->mca_crcount = idev->mc_qrv;
 pmc->mca_sfmode = im->mca_sfmode;
 if (pmc->mca_sfmode == MCAST_INCLUDE) {
  struct ip6_sf_list *psf;

  pmc->mca_tomb = im->mca_tomb;
  pmc->mca_sources = im->mca_sources;
  im->mca_tomb = im->mca_sources = ((void*)0);
  for (psf = pmc->mca_sources; psf; psf = psf->sf_next)
   psf->sf_crcount = pmc->mca_crcount;
 }
 spin_unlock_bh(&im->mca_lock);

 spin_lock_bh(&idev->mc_lock);
 pmc->next = idev->mc_tomb;
 idev->mc_tomb = pmc;
 spin_unlock_bh(&idev->mc_lock);
}
