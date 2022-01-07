
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xfrmu_spdhthresh {int lbits; int rbits; } ;
struct sk_buff {int sk; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_3__ {int lbits4; int rbits4; int lbits6; int rbits6; int lock; } ;
struct TYPE_4__ {TYPE_1__ policy_hthresh; } ;
struct net {TYPE_2__ xfrm; } ;


 int EINVAL ;
 size_t XFRMA_SPD_IPV4_HTHRESH ;
 size_t XFRMA_SPD_IPV6_HTHRESH ;
 struct xfrmu_spdhthresh* nla_data (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 struct net* sock_net (int ) ;
 int write_seqlock (int *) ;
 int write_sequnlock (int *) ;
 int xfrm_policy_hash_rebuild (struct net*) ;

__attribute__((used)) static int xfrm_set_spdinfo(struct sk_buff *skb, struct nlmsghdr *nlh,
       struct nlattr **attrs)
{
 struct net *net = sock_net(skb->sk);
 struct xfrmu_spdhthresh *thresh4 = ((void*)0);
 struct xfrmu_spdhthresh *thresh6 = ((void*)0);


 if (attrs[XFRMA_SPD_IPV4_HTHRESH]) {
  struct nlattr *rta = attrs[XFRMA_SPD_IPV4_HTHRESH];

  if (nla_len(rta) < sizeof(*thresh4))
   return -EINVAL;
  thresh4 = nla_data(rta);
  if (thresh4->lbits > 32 || thresh4->rbits > 32)
   return -EINVAL;
 }
 if (attrs[XFRMA_SPD_IPV6_HTHRESH]) {
  struct nlattr *rta = attrs[XFRMA_SPD_IPV6_HTHRESH];

  if (nla_len(rta) < sizeof(*thresh6))
   return -EINVAL;
  thresh6 = nla_data(rta);
  if (thresh6->lbits > 128 || thresh6->rbits > 128)
   return -EINVAL;
 }

 if (thresh4 || thresh6) {
  write_seqlock(&net->xfrm.policy_hthresh.lock);
  if (thresh4) {
   net->xfrm.policy_hthresh.lbits4 = thresh4->lbits;
   net->xfrm.policy_hthresh.rbits4 = thresh4->rbits;
  }
  if (thresh6) {
   net->xfrm.policy_hthresh.lbits6 = thresh6->lbits;
   net->xfrm.policy_hthresh.rbits6 = thresh6->rbits;
  }
  write_sequnlock(&net->xfrm.policy_hthresh.lock);

  xfrm_policy_hash_rebuild(net);
 }

 return 0;
}
