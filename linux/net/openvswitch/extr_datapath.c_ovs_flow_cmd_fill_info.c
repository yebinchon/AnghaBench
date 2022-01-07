
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sw_flow {int id; } ;
struct sk_buff {int len; } ;
struct ovs_header {int dp_ifindex; } ;


 int EMSGSIZE ;
 int dp_flow_genl_family ;
 int genlmsg_cancel (struct sk_buff*,struct ovs_header*) ;
 int genlmsg_end (struct sk_buff*,struct ovs_header*) ;
 struct ovs_header* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;
 int ovs_flow_cmd_fill_actions (struct sw_flow const*,struct sk_buff*,int const) ;
 int ovs_flow_cmd_fill_stats (struct sw_flow const*,struct sk_buff*) ;
 int ovs_nla_put_identifier (struct sw_flow const*,struct sk_buff*) ;
 int ovs_nla_put_mask (struct sw_flow const*,struct sk_buff*) ;
 int ovs_nla_put_masked_key (struct sw_flow const*,struct sk_buff*) ;
 scalar_t__ should_fill_actions (int ) ;
 scalar_t__ should_fill_key (int *,int ) ;
 scalar_t__ should_fill_mask (int ) ;

__attribute__((used)) static int ovs_flow_cmd_fill_info(const struct sw_flow *flow, int dp_ifindex,
      struct sk_buff *skb, u32 portid,
      u32 seq, u32 flags, u8 cmd, u32 ufid_flags)
{
 const int skb_orig_len = skb->len;
 struct ovs_header *ovs_header;
 int err;

 ovs_header = genlmsg_put(skb, portid, seq, &dp_flow_genl_family,
     flags, cmd);
 if (!ovs_header)
  return -EMSGSIZE;

 ovs_header->dp_ifindex = dp_ifindex;

 err = ovs_nla_put_identifier(flow, skb);
 if (err)
  goto error;

 if (should_fill_key(&flow->id, ufid_flags)) {
  err = ovs_nla_put_masked_key(flow, skb);
  if (err)
   goto error;
 }

 if (should_fill_mask(ufid_flags)) {
  err = ovs_nla_put_mask(flow, skb);
  if (err)
   goto error;
 }

 err = ovs_flow_cmd_fill_stats(flow, skb);
 if (err)
  goto error;

 if (should_fill_actions(ufid_flags)) {
  err = ovs_flow_cmd_fill_actions(flow, skb, skb_orig_len);
  if (err)
   goto error;
 }

 genlmsg_end(skb, ovs_header);
 return 0;

error:
 genlmsg_cancel(skb, ovs_header);
 return err;
}
