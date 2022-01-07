
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct inet6_dev {int lock; struct ifmcaddr6* mc_list; } ;
struct ifmcaddr6 {int mca_flags; int mca_lock; scalar_t__* mca_sfcount; struct ifmcaddr6* next; } ;


 int MAF_NOREPORT ;
 size_t MCAST_EXCLUDE ;
 int MLD2_MODE_IS_EXCLUDE ;
 int MLD2_MODE_IS_INCLUDE ;
 struct sk_buff* add_grec (struct sk_buff*,struct ifmcaddr6*,int,int ,int ,int ) ;
 int mld_sendpack (struct sk_buff*) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void mld_send_report(struct inet6_dev *idev, struct ifmcaddr6 *pmc)
{
 struct sk_buff *skb = ((void*)0);
 int type;

 read_lock_bh(&idev->lock);
 if (!pmc) {
  for (pmc = idev->mc_list; pmc; pmc = pmc->next) {
   if (pmc->mca_flags & MAF_NOREPORT)
    continue;
   spin_lock_bh(&pmc->mca_lock);
   if (pmc->mca_sfcount[MCAST_EXCLUDE])
    type = MLD2_MODE_IS_EXCLUDE;
   else
    type = MLD2_MODE_IS_INCLUDE;
   skb = add_grec(skb, pmc, type, 0, 0, 0);
   spin_unlock_bh(&pmc->mca_lock);
  }
 } else {
  spin_lock_bh(&pmc->mca_lock);
  if (pmc->mca_sfcount[MCAST_EXCLUDE])
   type = MLD2_MODE_IS_EXCLUDE;
  else
   type = MLD2_MODE_IS_INCLUDE;
  skb = add_grec(skb, pmc, type, 0, 0, 0);
  spin_unlock_bh(&pmc->mca_lock);
 }
 read_unlock_bh(&idev->lock);
 if (skb)
  mld_sendpack(skb);
}
