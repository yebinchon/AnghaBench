
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nft_counter_percpu_priv {int dummy; } ;
struct nft_counter {int packets; int bytes; } ;


 int NFTA_COUNTER_BYTES ;
 int NFTA_COUNTER_PACKETS ;
 int NFTA_COUNTER_PAD ;
 int cpu_to_be64 (int ) ;
 int nft_counter_fetch (struct nft_counter_percpu_priv*,struct nft_counter*) ;
 int nft_counter_reset (struct nft_counter_percpu_priv*,struct nft_counter*) ;
 scalar_t__ nla_put_be64 (struct sk_buff*,int ,int ,int ) ;

__attribute__((used)) static int nft_counter_do_dump(struct sk_buff *skb,
          struct nft_counter_percpu_priv *priv,
          bool reset)
{
 struct nft_counter total;

 nft_counter_fetch(priv, &total);

 if (nla_put_be64(skb, NFTA_COUNTER_BYTES, cpu_to_be64(total.bytes),
    NFTA_COUNTER_PAD) ||
     nla_put_be64(skb, NFTA_COUNTER_PACKETS, cpu_to_be64(total.packets),
    NFTA_COUNTER_PAD))
  goto nla_put_failure;

 if (reset)
  nft_counter_reset(priv, &total);

 return 0;

nla_put_failure:
 return -1;
}
