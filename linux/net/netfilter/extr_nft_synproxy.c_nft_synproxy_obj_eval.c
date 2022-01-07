
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_synproxy {int dummy; } ;
struct nft_regs {int dummy; } ;
struct nft_pktinfo {int dummy; } ;
struct nft_object {int dummy; } ;


 struct nft_synproxy* nft_obj_data (struct nft_object*) ;
 int nft_synproxy_do_eval (struct nft_synproxy const*,struct nft_regs*,struct nft_pktinfo const*) ;

__attribute__((used)) static void nft_synproxy_obj_eval(struct nft_object *obj,
      struct nft_regs *regs,
      const struct nft_pktinfo *pkt)
{
 const struct nft_synproxy *priv = nft_obj_data(obj);

 nft_synproxy_do_eval(priv, regs, pkt);
}
