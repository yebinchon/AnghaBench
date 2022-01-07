
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nft_payload {int dummy; } ;
struct TYPE_2__ {int protonum; } ;
struct nft_offload_ctx {TYPE_1__ dep; } ;
struct nft_flow_rule {int dummy; } ;


 int EOPNOTSUPP ;


 int nft_payload_offload_tcp (struct nft_offload_ctx*,struct nft_flow_rule*,struct nft_payload const*) ;
 int nft_payload_offload_udp (struct nft_offload_ctx*,struct nft_flow_rule*,struct nft_payload const*) ;

__attribute__((used)) static int nft_payload_offload_th(struct nft_offload_ctx *ctx,
      struct nft_flow_rule *flow,
      const struct nft_payload *priv)
{
 int err;

 switch (ctx->dep.protonum) {
 case 129:
  err = nft_payload_offload_tcp(ctx, flow, priv);
  break;
 case 128:
  err = nft_payload_offload_udp(ctx, flow, priv);
  break;
 default:
  return -EOPNOTSUPP;
 }

 return err;
}
