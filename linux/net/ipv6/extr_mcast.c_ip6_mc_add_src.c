
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6_sf_list {scalar_t__ sf_crcount; struct ip6_sf_list* sf_next; } ;
struct inet6_dev {int lock; int mc_ifc_count; int mc_qrv; struct ifmcaddr6* mc_list; } ;
struct in6_addr {int dummy; } ;
struct ifmcaddr6 {size_t mca_sfmode; scalar_t__* mca_sfcount; int mca_lock; struct ip6_sf_list* mca_sources; int mca_crcount; int mca_addr; struct ifmcaddr6* next; } ;


 int ENODEV ;
 int ESRCH ;
 size_t MCAST_EXCLUDE ;
 size_t MCAST_INCLUDE ;
 int ip6_mc_add1_src (struct ifmcaddr6*,int,struct in6_addr const*) ;
 int ip6_mc_del1_src (struct ifmcaddr6*,int,struct in6_addr const*) ;
 scalar_t__ ipv6_addr_equal (struct in6_addr const*,int *) ;
 int mld_ifc_event (struct inet6_dev*) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int sf_markstate (struct ifmcaddr6*) ;
 scalar_t__ sf_setstate (struct ifmcaddr6*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int ip6_mc_add_src(struct inet6_dev *idev, const struct in6_addr *pmca,
     int sfmode, int sfcount, const struct in6_addr *psfsrc,
     int delta)
{
 struct ifmcaddr6 *pmc;
 int isexclude;
 int i, err;

 if (!idev)
  return -ENODEV;
 read_lock_bh(&idev->lock);
 for (pmc = idev->mc_list; pmc; pmc = pmc->next) {
  if (ipv6_addr_equal(pmca, &pmc->mca_addr))
   break;
 }
 if (!pmc) {

  read_unlock_bh(&idev->lock);
  return -ESRCH;
 }
 spin_lock_bh(&pmc->mca_lock);

 sf_markstate(pmc);
 isexclude = pmc->mca_sfmode == MCAST_EXCLUDE;
 if (!delta)
  pmc->mca_sfcount[sfmode]++;
 err = 0;
 for (i = 0; i < sfcount; i++) {
  err = ip6_mc_add1_src(pmc, sfmode, &psfsrc[i]);
  if (err)
   break;
 }
 if (err) {
  int j;

  if (!delta)
   pmc->mca_sfcount[sfmode]--;
  for (j = 0; j < i; j++)
   ip6_mc_del1_src(pmc, sfmode, &psfsrc[j]);
 } else if (isexclude != (pmc->mca_sfcount[MCAST_EXCLUDE] != 0)) {
  struct ip6_sf_list *psf;


  if (pmc->mca_sfcount[MCAST_EXCLUDE])
   pmc->mca_sfmode = MCAST_EXCLUDE;
  else if (pmc->mca_sfcount[MCAST_INCLUDE])
   pmc->mca_sfmode = MCAST_INCLUDE;


  pmc->mca_crcount = idev->mc_qrv;
  idev->mc_ifc_count = pmc->mca_crcount;
  for (psf = pmc->mca_sources; psf; psf = psf->sf_next)
   psf->sf_crcount = 0;
  mld_ifc_event(idev);
 } else if (sf_setstate(pmc))
  mld_ifc_event(idev);
 spin_unlock_bh(&pmc->mca_lock);
 read_unlock_bh(&idev->lock);
 return err;
}
