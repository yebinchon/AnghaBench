
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct inet6_dev {int lock; struct ifmcaddr6* mc_list; } ;
struct ifmcaddr6 {int mca_lock; scalar_t__* mca_sfcount; struct ifmcaddr6* next; } ;


 size_t MCAST_EXCLUDE ;
 int MLD2_ALLOW_NEW_SOURCES ;
 int MLD2_CHANGE_TO_EXCLUDE ;
 struct sk_buff* add_grec (struct sk_buff*,struct ifmcaddr6*,int,int ,int ,int) ;
 scalar_t__ mld_in_v1_mode (struct inet6_dev*) ;
 int mld_sendpack (struct sk_buff*) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void mld_send_initial_cr(struct inet6_dev *idev)
{
 struct sk_buff *skb;
 struct ifmcaddr6 *pmc;
 int type;

 if (mld_in_v1_mode(idev))
  return;

 skb = ((void*)0);
 read_lock_bh(&idev->lock);
 for (pmc = idev->mc_list; pmc; pmc = pmc->next) {
  spin_lock_bh(&pmc->mca_lock);
  if (pmc->mca_sfcount[MCAST_EXCLUDE])
   type = MLD2_CHANGE_TO_EXCLUDE;
  else
   type = MLD2_ALLOW_NEW_SOURCES;
  skb = add_grec(skb, pmc, type, 0, 0, 1);
  spin_unlock_bh(&pmc->mca_lock);
 }
 read_unlock_bh(&idev->lock);
 if (skb)
  mld_sendpack(skb);
}
