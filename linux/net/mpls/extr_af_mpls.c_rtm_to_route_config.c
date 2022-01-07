
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int sk; } ;
struct rtmsg {scalar_t__ rtm_family; int rtm_dst_len; scalar_t__ rtm_src_len; scalar_t__ rtm_tos; scalar_t__ rtm_table; scalar_t__ rtm_scope; scalar_t__ rtm_type; scalar_t__ rtm_flags; int rtm_protocol; } ;
struct nlmsghdr {int nlmsg_flags; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_3__ {int nl_net; struct nlmsghdr* nlh; int portid; } ;
struct mpls_route_config {int rc_output_labels; int rc_ttl_propagate; int rc_mp_len; int rc_mp; int rc_via; int rc_via_table; int rc_via_alen; int rc_label; TYPE_1__ rc_nlinfo; int * rc_output_label; int rc_ifindex; int rc_nlflags; int rc_protocol; } ;
struct TYPE_4__ {int portid; } ;


 scalar_t__ AF_MPLS ;
 int EINVAL ;
 int LABEL_NOT_SPECIFIED ;
 int MAX_NEW_LABELS ;
 int MPLS_NEIGH_TABLE_UNSPEC ;
 int MPLS_TTL_PROP_DEFAULT ;
 int MPLS_TTL_PROP_DISABLED ;
 int MPLS_TTL_PROP_ENABLED ;
 TYPE_2__ NETLINK_CB (struct sk_buff*) ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 int NL_SET_ERR_MSG_ATTR (struct netlink_ext_ack*,struct nlattr*,char*) ;


 int RTA_MAX ;





 scalar_t__ RTN_UNICAST ;
 scalar_t__ RT_SCOPE_UNIVERSE ;
 scalar_t__ RT_TABLE_MAIN ;
 int mpls_label_ok (int ,int *,struct netlink_ext_ack*) ;
 int nla_data (struct nlattr*) ;
 int nla_get_labels (struct nlattr*,int,int*,int *,struct netlink_ext_ack*) ;
 int nla_get_u32 (struct nlattr*) ;
 int nla_get_u8 (struct nlattr*) ;
 int nla_get_via (struct nlattr*,int *,int *,int ,struct netlink_ext_ack*) ;
 int nla_len (struct nlattr*) ;
 struct rtmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_parse_deprecated (struct nlmsghdr*,int,struct nlattr**,int,int ,struct netlink_ext_ack*) ;
 int rtm_mpls_policy ;
 int sock_net (int ) ;

__attribute__((used)) static int rtm_to_route_config(struct sk_buff *skb,
          struct nlmsghdr *nlh,
          struct mpls_route_config *cfg,
          struct netlink_ext_ack *extack)
{
 struct rtmsg *rtm;
 struct nlattr *tb[RTA_MAX+1];
 int index;
 int err;

 err = nlmsg_parse_deprecated(nlh, sizeof(*rtm), tb, RTA_MAX,
         rtm_mpls_policy, extack);
 if (err < 0)
  goto errout;

 err = -EINVAL;
 rtm = nlmsg_data(nlh);

 if (rtm->rtm_family != AF_MPLS) {
  NL_SET_ERR_MSG(extack, "Invalid address family in rtmsg");
  goto errout;
 }
 if (rtm->rtm_dst_len != 20) {
  NL_SET_ERR_MSG(extack, "rtm_dst_len must be 20 for MPLS");
  goto errout;
 }
 if (rtm->rtm_src_len != 0) {
  NL_SET_ERR_MSG(extack, "rtm_src_len must be 0 for MPLS");
  goto errout;
 }
 if (rtm->rtm_tos != 0) {
  NL_SET_ERR_MSG(extack, "rtm_tos must be 0 for MPLS");
  goto errout;
 }
 if (rtm->rtm_table != RT_TABLE_MAIN) {
  NL_SET_ERR_MSG(extack,
          "MPLS only supports the main route table");
  goto errout;
 }






 if (rtm->rtm_scope != RT_SCOPE_UNIVERSE) {
  NL_SET_ERR_MSG(extack,
          "Invalid route scope  - MPLS only supports UNIVERSE");
  goto errout;
 }
 if (rtm->rtm_type != RTN_UNICAST) {
  NL_SET_ERR_MSG(extack,
          "Invalid route type - MPLS only supports UNICAST");
  goto errout;
 }
 if (rtm->rtm_flags != 0) {
  NL_SET_ERR_MSG(extack, "rtm_flags must be 0 for MPLS");
  goto errout;
 }

 cfg->rc_label = LABEL_NOT_SPECIFIED;
 cfg->rc_protocol = rtm->rtm_protocol;
 cfg->rc_via_table = MPLS_NEIGH_TABLE_UNSPEC;
 cfg->rc_ttl_propagate = MPLS_TTL_PROP_DEFAULT;
 cfg->rc_nlflags = nlh->nlmsg_flags;
 cfg->rc_nlinfo.portid = NETLINK_CB(skb).portid;
 cfg->rc_nlinfo.nlh = nlh;
 cfg->rc_nlinfo.nl_net = sock_net(skb->sk);

 for (index = 0; index <= RTA_MAX; index++) {
  struct nlattr *nla = tb[index];
  if (!nla)
   continue;

  switch (index) {
  case 130:
   cfg->rc_ifindex = nla_get_u32(nla);
   break;
  case 131:
   if (nla_get_labels(nla, MAX_NEW_LABELS,
        &cfg->rc_output_labels,
        cfg->rc_output_label, extack))
    goto errout;
   break;
  case 134:
  {
   u8 label_count;
   if (nla_get_labels(nla, 1, &label_count,
        &cfg->rc_label, extack))
    goto errout;

   if (!mpls_label_ok(cfg->rc_nlinfo.nl_net,
        &cfg->rc_label, extack))
    goto errout;
   break;
  }
  case 133:
   NL_SET_ERR_MSG(extack, "MPLS does not support RTA_GATEWAY attribute");
   goto errout;
  case 128:
  {
   if (nla_get_via(nla, &cfg->rc_via_alen,
     &cfg->rc_via_table, cfg->rc_via,
     extack))
    goto errout;
   break;
  }
  case 132:
  {
   cfg->rc_mp = nla_data(nla);
   cfg->rc_mp_len = nla_len(nla);
   break;
  }
  case 129:
  {
   u8 ttl_propagate = nla_get_u8(nla);

   if (ttl_propagate > 1) {
    NL_SET_ERR_MSG_ATTR(extack, nla,
          "RTA_TTL_PROPAGATE can only be 0 or 1");
    goto errout;
   }
   cfg->rc_ttl_propagate = ttl_propagate ?
    MPLS_TTL_PROP_ENABLED :
    MPLS_TTL_PROP_DISABLED;
   break;
  }
  default:
   NL_SET_ERR_MSG_ATTR(extack, nla, "Unknown attribute");

   goto errout;
  }
 }

 err = 0;
errout:
 return err;
}
