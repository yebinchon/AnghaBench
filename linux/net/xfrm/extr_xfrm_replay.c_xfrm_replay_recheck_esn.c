
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int replay_window; } ;
struct xfrm_state {TYPE_3__ stats; } ;
struct sk_buff {int dummy; } ;
typedef int __be32 ;
struct TYPE_5__ {scalar_t__ hi; } ;
struct TYPE_6__ {TYPE_1__ input; } ;
struct TYPE_8__ {TYPE_2__ seq; } ;


 int EINVAL ;
 TYPE_4__* XFRM_SKB_CB (struct sk_buff*) ;
 scalar_t__ htonl (int ) ;
 scalar_t__ unlikely (int) ;
 int xfrm_replay_check_esn (struct xfrm_state*,struct sk_buff*,int ) ;
 int xfrm_replay_seqhi (struct xfrm_state*,int ) ;

__attribute__((used)) static int xfrm_replay_recheck_esn(struct xfrm_state *x,
       struct sk_buff *skb, __be32 net_seq)
{
 if (unlikely(XFRM_SKB_CB(skb)->seq.input.hi !=
       htonl(xfrm_replay_seqhi(x, net_seq)))) {
   x->stats.replay_window++;
   return -EINVAL;
 }

 return xfrm_replay_check_esn(x, skb, net_seq);
}
