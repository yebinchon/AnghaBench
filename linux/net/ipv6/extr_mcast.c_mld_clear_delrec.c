
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6_sf_list {struct ip6_sf_list* sf_next; int mca_lock; struct ip6_sf_list* mca_tomb; struct ip6_sf_list* next; int idev; } ;
struct inet6_dev {int lock; struct ip6_sf_list* mc_list; int mc_lock; struct ip6_sf_list* mc_tomb; } ;
struct ifmcaddr6 {struct ifmcaddr6* sf_next; int mca_lock; struct ifmcaddr6* mca_tomb; struct ifmcaddr6* next; int idev; } ;


 int in6_dev_put (int ) ;
 int ip6_mc_clear_src (struct ip6_sf_list*) ;
 int kfree (struct ip6_sf_list*) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void mld_clear_delrec(struct inet6_dev *idev)
{
 struct ifmcaddr6 *pmc, *nextpmc;

 spin_lock_bh(&idev->mc_lock);
 pmc = idev->mc_tomb;
 idev->mc_tomb = ((void*)0);
 spin_unlock_bh(&idev->mc_lock);

 for (; pmc; pmc = nextpmc) {
  nextpmc = pmc->next;
  ip6_mc_clear_src(pmc);
  in6_dev_put(pmc->idev);
  kfree(pmc);
 }


 read_lock_bh(&idev->lock);
 for (pmc = idev->mc_list; pmc; pmc = pmc->next) {
  struct ip6_sf_list *psf, *psf_next;

  spin_lock_bh(&pmc->mca_lock);
  psf = pmc->mca_tomb;
  pmc->mca_tomb = ((void*)0);
  spin_unlock_bh(&pmc->mca_lock);
  for (; psf; psf = psf_next) {
   psf_next = psf->sf_next;
   kfree(psf);
  }
 }
 read_unlock_bh(&idev->lock);
}
