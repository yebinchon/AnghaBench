
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ovs_header {int dummy; } ;
struct nlattr {int dummy; } ;
struct genl_info {int dummy; } ;


 int DP_MAX_BANDS ;
 int EMSGSIZE ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int OVS_BAND_ATTR_TYPE ;
 int OVS_BAND_ATTR_UNSPEC ;
 int OVS_METER_ATTR_BANDS ;
 int OVS_METER_ATTR_MAX_BANDS ;
 int OVS_METER_ATTR_MAX_METERS ;
 int OVS_METER_BAND_TYPE_DROP ;
 int OVS_METER_CMD_FEATURES ;
 int PTR_ERR (struct sk_buff*) ;
 int U32_MAX ;
 int genlmsg_end (struct sk_buff*,struct ovs_header*) ;
 int genlmsg_reply (struct sk_buff*,struct genl_info*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* ovs_meter_cmd_reply_start (struct genl_info*,int ,struct ovs_header**) ;

__attribute__((used)) static int ovs_meter_cmd_features(struct sk_buff *skb, struct genl_info *info)
{
 struct sk_buff *reply;
 struct ovs_header *ovs_reply_header;
 struct nlattr *nla, *band_nla;
 int err;

 reply = ovs_meter_cmd_reply_start(info, OVS_METER_CMD_FEATURES,
       &ovs_reply_header);
 if (IS_ERR(reply))
  return PTR_ERR(reply);

 if (nla_put_u32(reply, OVS_METER_ATTR_MAX_METERS, U32_MAX) ||
     nla_put_u32(reply, OVS_METER_ATTR_MAX_BANDS, DP_MAX_BANDS))
  goto nla_put_failure;

 nla = nla_nest_start_noflag(reply, OVS_METER_ATTR_BANDS);
 if (!nla)
  goto nla_put_failure;

 band_nla = nla_nest_start_noflag(reply, OVS_BAND_ATTR_UNSPEC);
 if (!band_nla)
  goto nla_put_failure;

 if (nla_put_u32(reply, OVS_BAND_ATTR_TYPE, OVS_METER_BAND_TYPE_DROP))
  goto nla_put_failure;
 nla_nest_end(reply, band_nla);
 nla_nest_end(reply, nla);

 genlmsg_end(reply, ovs_reply_header);
 return genlmsg_reply(reply, info);

nla_put_failure:
 nlmsg_free(reply);
 err = -EMSGSIZE;
 return err;
}
