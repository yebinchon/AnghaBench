
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {int code; } ;
struct nft_regs {TYPE_2__ verdict; } ;
struct nft_pktinfo {TYPE_1__* skb; } ;
struct nft_object {int dummy; } ;
struct nft_limit {int nsecs; int rate; } ;
struct TYPE_3__ {int len; } ;


 int NFT_BREAK ;
 int div64_u64 (int,int ) ;
 scalar_t__ nft_limit_eval (struct nft_limit*,int ) ;
 struct nft_limit* nft_obj_data (struct nft_object*) ;

__attribute__((used)) static void nft_limit_obj_bytes_eval(struct nft_object *obj,
         struct nft_regs *regs,
         const struct nft_pktinfo *pkt)
{
 struct nft_limit *priv = nft_obj_data(obj);
 u64 cost = div64_u64(priv->nsecs * pkt->skb->len, priv->rate);

 if (nft_limit_eval(priv, cost))
  regs->verdict.code = NFT_BREAK;
}
