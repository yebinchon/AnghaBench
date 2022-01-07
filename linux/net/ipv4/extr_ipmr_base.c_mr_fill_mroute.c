
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vif_device {TYPE_1__* dev; } ;
struct sk_buff {int dummy; } ;
struct rtnexthop {int rtnh_hops; int rtnh_len; int rtnh_ifindex; scalar_t__ rtnh_flags; } ;
struct rtmsg {int rtm_type; int rtm_flags; } ;
struct rta_mfc_stats {int mfcs_wrong_if; int mfcs_bytes; int mfcs_packets; } ;
struct nlattr {int dummy; } ;
struct mr_table {struct vif_device* vif_table; } ;
struct TYPE_5__ {int minvif; int maxvif; int* ttls; int wrong_if; int bytes; int pkt; int lastuse; } ;
struct TYPE_6__ {TYPE_2__ res; } ;
struct mr_mfc {int mfc_parent; int mfc_flags; TYPE_3__ mfc_un; } ;
typedef int mfcs ;
struct TYPE_4__ {int ifindex; } ;


 int EMSGSIZE ;
 int ENOENT ;
 int MAXVIFS ;
 int MFC_OFFLOAD ;
 unsigned long READ_ONCE (int ) ;
 int RTA_EXPIRES ;
 int RTA_IIF ;
 int RTA_MFC_STATS ;
 int RTA_MULTIPATH ;
 int RTA_PAD ;
 int RTNH_F_OFFLOAD ;
 int RTNH_F_UNRESOLVED ;
 int RTN_MULTICAST ;
 scalar_t__ VIF_EXISTS (struct mr_table*,int) ;
 unsigned long jiffies ;
 int jiffies_to_clock_t (unsigned long) ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_64bit (struct sk_buff*,int ,int,struct rta_mfc_stats*,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u64_64bit (struct sk_buff*,int ,int ,int ) ;
 struct rtnexthop* nla_reserve_nohdr (struct sk_buff*,int) ;
 scalar_t__ time_after_eq (unsigned long,unsigned long) ;

int mr_fill_mroute(struct mr_table *mrt, struct sk_buff *skb,
     struct mr_mfc *c, struct rtmsg *rtm)
{
 struct rta_mfc_stats mfcs;
 struct nlattr *mp_attr;
 struct rtnexthop *nhp;
 unsigned long lastuse;
 int ct;


 if (c->mfc_parent >= MAXVIFS) {
  rtm->rtm_flags |= RTNH_F_UNRESOLVED;
  return -ENOENT;
 }

 if (VIF_EXISTS(mrt, c->mfc_parent) &&
     nla_put_u32(skb, RTA_IIF,
   mrt->vif_table[c->mfc_parent].dev->ifindex) < 0)
  return -EMSGSIZE;

 if (c->mfc_flags & MFC_OFFLOAD)
  rtm->rtm_flags |= RTNH_F_OFFLOAD;

 mp_attr = nla_nest_start_noflag(skb, RTA_MULTIPATH);
 if (!mp_attr)
  return -EMSGSIZE;

 for (ct = c->mfc_un.res.minvif; ct < c->mfc_un.res.maxvif; ct++) {
  if (VIF_EXISTS(mrt, ct) && c->mfc_un.res.ttls[ct] < 255) {
   struct vif_device *vif;

   nhp = nla_reserve_nohdr(skb, sizeof(*nhp));
   if (!nhp) {
    nla_nest_cancel(skb, mp_attr);
    return -EMSGSIZE;
   }

   nhp->rtnh_flags = 0;
   nhp->rtnh_hops = c->mfc_un.res.ttls[ct];
   vif = &mrt->vif_table[ct];
   nhp->rtnh_ifindex = vif->dev->ifindex;
   nhp->rtnh_len = sizeof(*nhp);
  }
 }

 nla_nest_end(skb, mp_attr);

 lastuse = READ_ONCE(c->mfc_un.res.lastuse);
 lastuse = time_after_eq(jiffies, lastuse) ? jiffies - lastuse : 0;

 mfcs.mfcs_packets = c->mfc_un.res.pkt;
 mfcs.mfcs_bytes = c->mfc_un.res.bytes;
 mfcs.mfcs_wrong_if = c->mfc_un.res.wrong_if;
 if (nla_put_64bit(skb, RTA_MFC_STATS, sizeof(mfcs), &mfcs, RTA_PAD) ||
     nla_put_u64_64bit(skb, RTA_EXPIRES, jiffies_to_clock_t(lastuse),
         RTA_PAD))
  return -EMSGSIZE;

 rtm->rtm_type = RTN_MULTICAST;
 return 1;
}
