
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sw_flow_id {int dummy; } ;
struct sw_flow_actions {int dummy; } ;
struct sk_buff {int dummy; } ;
struct genl_info {int dummy; } ;


 int ENOMEM ;
 struct sk_buff* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int dp_flow_genl_family ;
 struct sk_buff* genlmsg_new (size_t,int ) ;
 size_t ovs_flow_cmd_msg_size (struct sw_flow_actions const*,struct sw_flow_id const*,int ) ;
 int ovs_must_notify (int *,struct genl_info*,int ) ;

__attribute__((used)) static struct sk_buff *ovs_flow_cmd_alloc_info(const struct sw_flow_actions *acts,
            const struct sw_flow_id *sfid,
            struct genl_info *info,
            bool always,
            uint32_t ufid_flags)
{
 struct sk_buff *skb;
 size_t len;

 if (!always && !ovs_must_notify(&dp_flow_genl_family, info, 0))
  return ((void*)0);

 len = ovs_flow_cmd_msg_size(acts, sfid, ufid_flags);
 skb = genlmsg_new(len, GFP_KERNEL);
 if (!skb)
  return ERR_PTR(-ENOMEM);

 return skb;
}
