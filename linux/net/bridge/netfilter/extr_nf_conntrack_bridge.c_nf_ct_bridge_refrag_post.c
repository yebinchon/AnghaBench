
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nf_bridge_frag_data {int dummy; } ;
struct net {int dummy; } ;


 int br_dev_queue_push_xmit (struct net*,struct sock*,struct sk_buff*) ;
 int nf_ct_bridge_frag_restore (struct sk_buff*,struct nf_bridge_frag_data const*) ;

__attribute__((used)) static int nf_ct_bridge_refrag_post(struct net *net, struct sock *sk,
        const struct nf_bridge_frag_data *data,
        struct sk_buff *skb)
{
 int err;

 err = nf_ct_bridge_frag_restore(skb, data);
 if (err < 0)
  return err;

 return br_dev_queue_push_xmit(net, sk, skb);
}
