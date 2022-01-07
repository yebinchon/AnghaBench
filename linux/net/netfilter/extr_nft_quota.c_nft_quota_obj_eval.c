
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int code; } ;
struct nft_regs {TYPE_2__ verdict; } ;
struct nft_quota {int flags; } ;
struct nft_pktinfo {int skb; } ;
struct TYPE_3__ {int table; } ;
struct nft_object {TYPE_1__ key; } ;


 int GFP_ATOMIC ;
 int NFT_BREAK ;
 int NFT_MSG_NEWOBJ ;
 int NFT_QUOTA_DEPLETED_BIT ;
 int nft_net (struct nft_pktinfo const*) ;
 struct nft_quota* nft_obj_data (struct nft_object*) ;
 int nft_obj_notify (int ,int ,struct nft_object*,int ,int ,int ,int ,int ,int ) ;
 int nft_overquota (struct nft_quota*,int ) ;
 int nft_pf (struct nft_pktinfo const*) ;
 int nft_quota_invert (struct nft_quota*) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void nft_quota_obj_eval(struct nft_object *obj,
          struct nft_regs *regs,
          const struct nft_pktinfo *pkt)
{
 struct nft_quota *priv = nft_obj_data(obj);
 bool overquota;

 overquota = nft_overquota(priv, pkt->skb);
 if (overquota ^ nft_quota_invert(priv))
  regs->verdict.code = NFT_BREAK;

 if (overquota &&
     !test_and_set_bit(NFT_QUOTA_DEPLETED_BIT, &priv->flags))
  nft_obj_notify(nft_net(pkt), obj->key.table, obj, 0, 0,
          NFT_MSG_NEWOBJ, nft_pf(pkt), 0, GFP_ATOMIC);
}
