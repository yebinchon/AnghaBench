
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct nexthop {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct fib6_table {int dummy; } ;
struct fib6_nh {struct net_device* fib_nh_dev; } ;
struct TYPE_10__ {int plen; int addr; } ;
struct TYPE_9__ {int plen; int addr; } ;
struct TYPE_8__ {int plen; int addr; } ;
struct fib6_info {int dst_nocount; scalar_t__ fib6_protocol; int fib6_flags; int dst_host; TYPE_5__ fib6_prefsrc; struct fib6_nh* fib6_nh; struct nexthop* nh; TYPE_4__ fib6_src; TYPE_3__ fib6_dst; int fib6_type; int fib6_metric; struct fib6_table* fib6_table; struct dst_metrics* fib6_metrics; } ;
struct TYPE_7__ {TYPE_1__* nlh; struct net* nl_net; } ;
struct fib6_config {int fc_flags; scalar_t__ fc_type; int fc_dst_len; int fc_src_len; scalar_t__ fc_protocol; int fc_prefsrc; int fc_dst; int fc_src; int fc_metric; int fc_expires; int fc_mx_len; int fc_mx; int fc_table; TYPE_2__ fc_nlinfo; int fc_nh_id; } ;
struct dst_metrics {int dummy; } ;
typedef int gfp_t ;
struct TYPE_6__ {int nlmsg_flags; } ;


 int EINVAL ;
 int ENOBUFS ;
 int ENOMEM ;
 struct fib6_info* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct dst_metrics*) ;
 int NLM_F_CREATE ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 int PTR_ERR (struct dst_metrics*) ;
 int RTF_ADDRCONF ;
 int RTF_CACHE ;
 int RTF_EXPIRES ;
 int RTF_GATEWAY ;
 int RTF_NONEXTHOP ;
 int RTF_PCPU ;
 int RTF_REJECT ;
 scalar_t__ RTN_MAX ;
 int RTN_UNICAST ;
 scalar_t__ RTPROT_BOOT ;
 scalar_t__ RTPROT_UNSPEC ;
 scalar_t__ clock_t_to_jiffies (int ) ;
 int dst_default_metrics ;
 int fib6_check_nexthop (struct nexthop*,struct fib6_config*,struct netlink_ext_ack*) ;
 int fib6_clean_expires (struct fib6_info*) ;
 struct fib6_table* fib6_get_table (struct net*,int ) ;
 struct fib6_info* fib6_info_alloc (int ,int) ;
 int fib6_info_release (struct fib6_info*) ;
 scalar_t__ fib6_is_reject (int,struct net_device*,int) ;
 struct fib6_table* fib6_new_table (struct net*,int ) ;
 int fib6_nh_init (struct net*,struct fib6_nh*,struct fib6_config*,int ,struct netlink_ext_ack*) ;
 int fib6_set_expires (struct fib6_info*,scalar_t__) ;
 struct dst_metrics* ip_fib_metrics_init (struct net*,int ,int ,struct netlink_ext_ack*) ;
 int ipv6_addr_any (int *) ;
 int ipv6_addr_prefix (int *,int *,int) ;
 int ipv6_addr_type (int *) ;
 int ipv6_chk_addr (struct net*,int *,struct net_device*,int ) ;
 scalar_t__ jiffies ;
 struct fib6_nh* nexthop_fib6_nh (struct nexthop*) ;
 struct nexthop* nexthop_find_by_id (struct net*,int ) ;
 int nexthop_get (struct nexthop*) ;
 int pr_warn (char*) ;

__attribute__((used)) static struct fib6_info *ip6_route_info_create(struct fib6_config *cfg,
           gfp_t gfp_flags,
           struct netlink_ext_ack *extack)
{
 struct net *net = cfg->fc_nlinfo.nl_net;
 struct fib6_info *rt = ((void*)0);
 struct nexthop *nh = ((void*)0);
 struct fib6_table *table;
 struct fib6_nh *fib6_nh;
 int err = -EINVAL;
 int addr_type;


 if (cfg->fc_flags & RTF_PCPU) {
  NL_SET_ERR_MSG(extack, "Userspace can not set RTF_PCPU");
  goto out;
 }


 if (cfg->fc_flags & RTF_CACHE) {
  NL_SET_ERR_MSG(extack, "Userspace can not set RTF_CACHE");
  goto out;
 }

 if (cfg->fc_type > RTN_MAX) {
  NL_SET_ERR_MSG(extack, "Invalid route type");
  goto out;
 }

 if (cfg->fc_dst_len > 128) {
  NL_SET_ERR_MSG(extack, "Invalid prefix length");
  goto out;
 }
 if (cfg->fc_src_len > 128) {
  NL_SET_ERR_MSG(extack, "Invalid source address length");
  goto out;
 }

 if (cfg->fc_src_len) {
  NL_SET_ERR_MSG(extack,
          "Specifying source address requires IPV6_SUBTREES to be enabled");
  goto out;
 }

 if (cfg->fc_nh_id) {
  nh = nexthop_find_by_id(net, cfg->fc_nh_id);
  if (!nh) {
   NL_SET_ERR_MSG(extack, "Nexthop id does not exist");
   goto out;
  }
  err = fib6_check_nexthop(nh, cfg, extack);
  if (err)
   goto out;
 }

 err = -ENOBUFS;
 if (cfg->fc_nlinfo.nlh &&
     !(cfg->fc_nlinfo.nlh->nlmsg_flags & NLM_F_CREATE)) {
  table = fib6_get_table(net, cfg->fc_table);
  if (!table) {
   pr_warn("NLM_F_CREATE should be specified when creating new route\n");
   table = fib6_new_table(net, cfg->fc_table);
  }
 } else {
  table = fib6_new_table(net, cfg->fc_table);
 }

 if (!table)
  goto out;

 err = -ENOMEM;
 rt = fib6_info_alloc(gfp_flags, !nh);
 if (!rt)
  goto out;

 rt->fib6_metrics = ip_fib_metrics_init(net, cfg->fc_mx, cfg->fc_mx_len,
            extack);
 if (IS_ERR(rt->fib6_metrics)) {
  err = PTR_ERR(rt->fib6_metrics);

  rt->fib6_metrics = (struct dst_metrics *)&dst_default_metrics;
  goto out;
 }

 if (cfg->fc_flags & RTF_ADDRCONF)
  rt->dst_nocount = 1;

 if (cfg->fc_flags & RTF_EXPIRES)
  fib6_set_expires(rt, jiffies +
    clock_t_to_jiffies(cfg->fc_expires));
 else
  fib6_clean_expires(rt);

 if (cfg->fc_protocol == RTPROT_UNSPEC)
  cfg->fc_protocol = RTPROT_BOOT;
 rt->fib6_protocol = cfg->fc_protocol;

 rt->fib6_table = table;
 rt->fib6_metric = cfg->fc_metric;
 rt->fib6_type = cfg->fc_type ? : RTN_UNICAST;
 rt->fib6_flags = cfg->fc_flags & ~RTF_GATEWAY;

 ipv6_addr_prefix(&rt->fib6_dst.addr, &cfg->fc_dst, cfg->fc_dst_len);
 rt->fib6_dst.plen = cfg->fc_dst_len;
 if (rt->fib6_dst.plen == 128)
  rt->dst_host = 1;





 if (nh) {
  if (!nexthop_get(nh)) {
   NL_SET_ERR_MSG(extack, "Nexthop has been deleted");
   goto out;
  }
  if (rt->fib6_src.plen) {
   NL_SET_ERR_MSG(extack, "Nexthops can not be used with source routing");
   goto out;
  }
  rt->nh = nh;
  fib6_nh = nexthop_fib6_nh(rt->nh);
 } else {
  err = fib6_nh_init(net, rt->fib6_nh, cfg, gfp_flags, extack);
  if (err)
   goto out;

  fib6_nh = rt->fib6_nh;




  addr_type = ipv6_addr_type(&cfg->fc_dst);
  if (fib6_is_reject(cfg->fc_flags, rt->fib6_nh->fib_nh_dev,
       addr_type))
   rt->fib6_flags = RTF_REJECT | RTF_NONEXTHOP;
 }

 if (!ipv6_addr_any(&cfg->fc_prefsrc)) {
  struct net_device *dev = fib6_nh->fib_nh_dev;

  if (!ipv6_chk_addr(net, &cfg->fc_prefsrc, dev, 0)) {
   NL_SET_ERR_MSG(extack, "Invalid source address");
   err = -EINVAL;
   goto out;
  }
  rt->fib6_prefsrc.addr = cfg->fc_prefsrc;
  rt->fib6_prefsrc.plen = 128;
 } else
  rt->fib6_prefsrc.plen = 0;

 return rt;
out:
 fib6_info_release(rt);
 return ERR_PTR(err);
}
