
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {int ip; int in6; } ;
struct ipvs_sync_daemon_cfg {scalar_t__ mcast_af; TYPE_1__ mcast_group; int mcast_ttl; int mcast_port; int sync_maxlen; int syncid; int mcast_ifn; } ;
typedef int __u32 ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int EMSGSIZE ;
 int IPVS_CMD_ATTR_DAEMON ;
 int IPVS_DAEMON_ATTR_MCAST_GROUP ;
 int IPVS_DAEMON_ATTR_MCAST_GROUP6 ;
 int IPVS_DAEMON_ATTR_MCAST_IFN ;
 int IPVS_DAEMON_ATTR_MCAST_PORT ;
 int IPVS_DAEMON_ATTR_MCAST_TTL ;
 int IPVS_DAEMON_ATTR_STATE ;
 int IPVS_DAEMON_ATTR_SYNC_ID ;
 int IPVS_DAEMON_ATTR_SYNC_MAXLEN ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_in6_addr (struct sk_buff*,int ,int *) ;
 scalar_t__ nla_put_in_addr (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u16 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int ip_vs_genl_fill_daemon(struct sk_buff *skb, __u32 state,
      struct ipvs_sync_daemon_cfg *c)
{
 struct nlattr *nl_daemon;

 nl_daemon = nla_nest_start_noflag(skb, IPVS_CMD_ATTR_DAEMON);
 if (!nl_daemon)
  return -EMSGSIZE;

 if (nla_put_u32(skb, IPVS_DAEMON_ATTR_STATE, state) ||
     nla_put_string(skb, IPVS_DAEMON_ATTR_MCAST_IFN, c->mcast_ifn) ||
     nla_put_u32(skb, IPVS_DAEMON_ATTR_SYNC_ID, c->syncid) ||
     nla_put_u16(skb, IPVS_DAEMON_ATTR_SYNC_MAXLEN, c->sync_maxlen) ||
     nla_put_u16(skb, IPVS_DAEMON_ATTR_MCAST_PORT, c->mcast_port) ||
     nla_put_u8(skb, IPVS_DAEMON_ATTR_MCAST_TTL, c->mcast_ttl))
  goto nla_put_failure;







  if (c->mcast_af == AF_INET &&
      nla_put_in_addr(skb, IPVS_DAEMON_ATTR_MCAST_GROUP,
        c->mcast_group.ip))
   goto nla_put_failure;
 nla_nest_end(skb, nl_daemon);

 return 0;

nla_put_failure:
 nla_nest_cancel(skb, nl_daemon);
 return -EMSGSIZE;
}
