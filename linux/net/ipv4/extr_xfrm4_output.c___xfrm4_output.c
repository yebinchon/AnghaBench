
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xfrm_state_afinfo {int (* output_finish ) (struct sock*,struct sk_buff*) ;} ;
struct TYPE_4__ {int family; } ;
struct xfrm_state {TYPE_1__ outer_mode; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_5__ {struct xfrm_state* xfrm; } ;


 int EAFNOSUPPORT ;
 TYPE_3__* IPCB (struct sk_buff*) ;
 int IPSKB_REROUTED ;
 int dst_output (struct net*,struct sock*,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ likely (struct xfrm_state_afinfo const*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 TYPE_2__* skb_dst (struct sk_buff*) ;
 int stub1 (struct sock*,struct sk_buff*) ;
 struct xfrm_state_afinfo* xfrm_state_afinfo_get_rcu (int ) ;

__attribute__((used)) static int __xfrm4_output(struct net *net, struct sock *sk, struct sk_buff *skb)
{
 struct xfrm_state *x = skb_dst(skb)->xfrm;
 const struct xfrm_state_afinfo *afinfo;
 int ret = -EAFNOSUPPORT;
 rcu_read_lock();
 afinfo = xfrm_state_afinfo_get_rcu(x->outer_mode.family);
 if (likely(afinfo))
  ret = afinfo->output_finish(sk, skb);
 else
  kfree_skb(skb);
 rcu_read_unlock();

 return ret;
}
