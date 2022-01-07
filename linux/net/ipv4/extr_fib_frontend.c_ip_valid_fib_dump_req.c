
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtmsg {int rtm_flags; scalar_t__ rtm_family; void* rtm_table; int rtm_type; int rtm_protocol; scalar_t__ rtm_scope; scalar_t__ rtm_tos; scalar_t__ rtm_src_len; scalar_t__ rtm_dst_len; } ;
struct nlmsghdr {scalar_t__ nlmsg_len; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct netlink_callback {int answer_flags; struct netlink_ext_ack* extack; } ;
struct net {int dummy; } ;
struct fib_dump_filter {int dump_routes; int dump_exceptions; int dump_all_families; int flags; int filter_set; scalar_t__ dev; void* table_id; int rt_type; int protocol; } ;


 scalar_t__ AF_UNSPEC ;
 int ASSERT_RTNL () ;
 int EINVAL ;
 int ENODEV ;
 int NLM_F_DUMP_FILTERED ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 int RTA_MAX ;


 int RTM_F_CLONED ;
 int RTM_F_PREFIX ;
 scalar_t__ __dev_get_by_index (struct net*,int) ;
 void* nla_get_u32 (struct nlattr*) ;
 struct rtmsg* nlmsg_data (struct nlmsghdr const*) ;
 scalar_t__ nlmsg_msg_size (int) ;
 int nlmsg_parse_deprecated_strict (struct nlmsghdr const*,int,struct nlattr**,int,int ,struct netlink_ext_ack*) ;
 int rtm_ipv4_policy ;

int ip_valid_fib_dump_req(struct net *net, const struct nlmsghdr *nlh,
     struct fib_dump_filter *filter,
     struct netlink_callback *cb)
{
 struct netlink_ext_ack *extack = cb->extack;
 struct nlattr *tb[RTA_MAX + 1];
 struct rtmsg *rtm;
 int err, i;

 ASSERT_RTNL();

 if (nlh->nlmsg_len < nlmsg_msg_size(sizeof(*rtm))) {
  NL_SET_ERR_MSG(extack, "Invalid header for FIB dump request");
  return -EINVAL;
 }

 rtm = nlmsg_data(nlh);
 if (rtm->rtm_dst_len || rtm->rtm_src_len || rtm->rtm_tos ||
     rtm->rtm_scope) {
  NL_SET_ERR_MSG(extack, "Invalid values in header for FIB dump request");
  return -EINVAL;
 }

 if (rtm->rtm_flags & ~(RTM_F_CLONED | RTM_F_PREFIX)) {
  NL_SET_ERR_MSG(extack, "Invalid flags for FIB dump request");
  return -EINVAL;
 }
 if (rtm->rtm_flags & RTM_F_CLONED)
  filter->dump_routes = 0;
 else
  filter->dump_exceptions = 0;

 filter->dump_all_families = (rtm->rtm_family == AF_UNSPEC);
 filter->flags = rtm->rtm_flags;
 filter->protocol = rtm->rtm_protocol;
 filter->rt_type = rtm->rtm_type;
 filter->table_id = rtm->rtm_table;

 err = nlmsg_parse_deprecated_strict(nlh, sizeof(*rtm), tb, RTA_MAX,
         rtm_ipv4_policy, extack);
 if (err < 0)
  return err;

 for (i = 0; i <= RTA_MAX; ++i) {
  int ifindex;

  if (!tb[i])
   continue;

  switch (i) {
  case 128:
   filter->table_id = nla_get_u32(tb[i]);
   break;
  case 129:
   ifindex = nla_get_u32(tb[i]);
   filter->dev = __dev_get_by_index(net, ifindex);
   if (!filter->dev)
    return -ENODEV;
   break;
  default:
   NL_SET_ERR_MSG(extack, "Unsupported attribute in dump request");
   return -EINVAL;
  }
 }

 if (filter->flags || filter->protocol || filter->rt_type ||
     filter->table_id || filter->dev) {
  filter->filter_set = 1;
  cb->answer_flags = NLM_F_DUMP_FILTERED;
 }

 return 0;
}
