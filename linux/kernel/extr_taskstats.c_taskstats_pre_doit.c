
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nla_policy {int dummy; } ;
struct genl_ops {int cmd; } ;
struct genl_info {int extack; int nlhdr; } ;



 int EINVAL ;
 int GENL_HDRLEN ;
 int TASKSTATS_CMD_ATTR_MAX ;

 struct nla_policy* cgroupstats_cmd_get_policy ;
 int nlmsg_validate_deprecated (int ,int ,int ,struct nla_policy const*,int ) ;
 struct nla_policy* taskstats_cmd_get_policy ;

__attribute__((used)) static int taskstats_pre_doit(const struct genl_ops *ops, struct sk_buff *skb,
         struct genl_info *info)
{
 const struct nla_policy *policy = ((void*)0);

 switch (ops->cmd) {
 case 128:
  policy = taskstats_cmd_get_policy;
  break;
 case 129:
  policy = cgroupstats_cmd_get_policy;
  break;
 default:
  return -EINVAL;
 }

 return nlmsg_validate_deprecated(info->nlhdr, GENL_HDRLEN,
      TASKSTATS_CMD_ATTR_MAX, policy,
      info->extack);
}
