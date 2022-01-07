
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nft_offload_ctx {int num_actions; } ;
struct TYPE_6__ {int code; } ;
struct nft_data {TYPE_3__ verdict; } ;
struct nft_immediate_expr {struct nft_data data; } ;
struct nft_flow_rule {TYPE_2__* rule; } ;
struct flow_action_entry {int id; } ;
struct TYPE_4__ {struct flow_action_entry* entries; } ;
struct TYPE_5__ {TYPE_1__ action; } ;


 int EOPNOTSUPP ;
 int FLOW_ACTION_ACCEPT ;
 int FLOW_ACTION_DROP ;



__attribute__((used)) static int nft_immediate_offload_verdict(struct nft_offload_ctx *ctx,
      struct nft_flow_rule *flow,
      const struct nft_immediate_expr *priv)
{
 struct flow_action_entry *entry;
 const struct nft_data *data;

 entry = &flow->rule->action.entries[ctx->num_actions++];

 data = &priv->data;
 switch (data->verdict.code) {
 case 129:
  entry->id = FLOW_ACTION_ACCEPT;
  break;
 case 128:
  entry->id = FLOW_ACTION_DROP;
  break;
 default:
  return -EOPNOTSUPP;
 }

 return 0;
}
