
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct xfrmu_spdinfo {int rbits; int lbits; int spdhmcnt; int spdhcnt; int fwdscnt; int outscnt; int inscnt; int fwdcnt; int outcnt; int incnt; } ;
struct xfrmu_spdhthresh {int rbits; int lbits; int spdhmcnt; int spdhcnt; int fwdscnt; int outscnt; int inscnt; int fwdcnt; int outcnt; int incnt; } ;
struct xfrmu_spdhinfo {int rbits; int lbits; int spdhmcnt; int spdhcnt; int fwdscnt; int outscnt; int inscnt; int fwdcnt; int outcnt; int incnt; } ;
struct xfrmk_spdinfo {int spdhmcnt; int spdhcnt; int fwdscnt; int outscnt; int inscnt; int fwdcnt; int outcnt; int incnt; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct TYPE_3__ {int rbits6; int lbits6; int rbits4; int lbits4; int lock; } ;
struct TYPE_4__ {TYPE_1__ policy_hthresh; } ;
struct net {TYPE_2__ xfrm; } ;
typedef int spt6 ;
typedef int spt4 ;
typedef int sph ;
typedef int spc ;


 int EMSGSIZE ;
 int XFRMA_SPD_HINFO ;
 int XFRMA_SPD_INFO ;
 int XFRMA_SPD_IPV4_HTHRESH ;
 int XFRMA_SPD_IPV6_HTHRESH ;
 int XFRM_MSG_NEWSPDINFO ;
 int nla_put (struct sk_buff*,int ,int,struct xfrmu_spdinfo*) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 int * nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int ,int,int ) ;
 unsigned int read_seqbegin (int *) ;
 scalar_t__ read_seqretry (int *,unsigned int) ;
 int xfrm_spd_getinfo (struct net*,struct xfrmk_spdinfo*) ;

__attribute__((used)) static int build_spdinfo(struct sk_buff *skb, struct net *net,
    u32 portid, u32 seq, u32 flags)
{
 struct xfrmk_spdinfo si;
 struct xfrmu_spdinfo spc;
 struct xfrmu_spdhinfo sph;
 struct xfrmu_spdhthresh spt4, spt6;
 struct nlmsghdr *nlh;
 int err;
 u32 *f;
 unsigned lseq;

 nlh = nlmsg_put(skb, portid, seq, XFRM_MSG_NEWSPDINFO, sizeof(u32), 0);
 if (nlh == ((void*)0))
  return -EMSGSIZE;

 f = nlmsg_data(nlh);
 *f = flags;
 xfrm_spd_getinfo(net, &si);
 spc.incnt = si.incnt;
 spc.outcnt = si.outcnt;
 spc.fwdcnt = si.fwdcnt;
 spc.inscnt = si.inscnt;
 spc.outscnt = si.outscnt;
 spc.fwdscnt = si.fwdscnt;
 sph.spdhcnt = si.spdhcnt;
 sph.spdhmcnt = si.spdhmcnt;

 do {
  lseq = read_seqbegin(&net->xfrm.policy_hthresh.lock);

  spt4.lbits = net->xfrm.policy_hthresh.lbits4;
  spt4.rbits = net->xfrm.policy_hthresh.rbits4;
  spt6.lbits = net->xfrm.policy_hthresh.lbits6;
  spt6.rbits = net->xfrm.policy_hthresh.rbits6;
 } while (read_seqretry(&net->xfrm.policy_hthresh.lock, lseq));

 err = nla_put(skb, XFRMA_SPD_INFO, sizeof(spc), &spc);
 if (!err)
  err = nla_put(skb, XFRMA_SPD_HINFO, sizeof(sph), &sph);
 if (!err)
  err = nla_put(skb, XFRMA_SPD_IPV4_HTHRESH, sizeof(spt4), &spt4);
 if (!err)
  err = nla_put(skb, XFRMA_SPD_IPV6_HTHRESH, sizeof(spt6), &spt6);
 if (err) {
  nlmsg_cancel(skb, nlh);
  return err;
 }

 nlmsg_end(skb, nlh);
 return 0;
}
