
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nlattr {int dummy; } ;
struct netns_ipvs {scalar_t__ mixed_address_family_dests; } ;
struct TYPE_2__ {int in6; int ip; } ;
struct ipvs_sync_daemon_cfg {int mcast_ttl; void* mcast_port; TYPE_1__ mcast_group; int mcast_af; void* sync_maxlen; int syncid; int mcast_ifn; } ;
typedef int c ;


 int AF_INET ;
 int AF_INET6 ;
 int EAFNOSUPPORT ;
 int EINVAL ;
 int IPV6_ADDR_MULTICAST ;
 size_t IPVS_DAEMON_ATTR_MCAST_GROUP ;
 size_t IPVS_DAEMON_ATTR_MCAST_GROUP6 ;
 size_t IPVS_DAEMON_ATTR_MCAST_IFN ;
 size_t IPVS_DAEMON_ATTR_MCAST_PORT ;
 size_t IPVS_DAEMON_ATTR_MCAST_TTL ;
 size_t IPVS_DAEMON_ATTR_STATE ;
 size_t IPVS_DAEMON_ATTR_SYNC_ID ;
 size_t IPVS_DAEMON_ATTR_SYNC_MAXLEN ;
 int ipv4_is_multicast (int ) ;
 int ipv6_addr_type (int *) ;
 int memset (struct ipvs_sync_daemon_cfg*,int ,int) ;
 int nla_data (struct nlattr*) ;
 int nla_get_in6_addr (struct nlattr*) ;
 int nla_get_in_addr (struct nlattr*) ;
 void* nla_get_u16 (struct nlattr*) ;
 int nla_get_u32 (struct nlattr*) ;
 int nla_get_u8 (struct nlattr*) ;
 int start_sync_thread (struct netns_ipvs*,struct ipvs_sync_daemon_cfg*,int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int ip_vs_genl_new_daemon(struct netns_ipvs *ipvs, struct nlattr **attrs)
{
 struct ipvs_sync_daemon_cfg c;
 struct nlattr *a;
 int ret;

 memset(&c, 0, sizeof(c));
 if (!(attrs[IPVS_DAEMON_ATTR_STATE] &&
       attrs[IPVS_DAEMON_ATTR_MCAST_IFN] &&
       attrs[IPVS_DAEMON_ATTR_SYNC_ID]))
  return -EINVAL;
 strlcpy(c.mcast_ifn, nla_data(attrs[IPVS_DAEMON_ATTR_MCAST_IFN]),
  sizeof(c.mcast_ifn));
 c.syncid = nla_get_u32(attrs[IPVS_DAEMON_ATTR_SYNC_ID]);

 a = attrs[IPVS_DAEMON_ATTR_SYNC_MAXLEN];
 if (a)
  c.sync_maxlen = nla_get_u16(a);

 a = attrs[IPVS_DAEMON_ATTR_MCAST_GROUP];
 if (a) {
  c.mcast_af = AF_INET;
  c.mcast_group.ip = nla_get_in_addr(a);
  if (!ipv4_is_multicast(c.mcast_group.ip))
   return -EINVAL;
 } else {
  a = attrs[IPVS_DAEMON_ATTR_MCAST_GROUP6];
  if (a) {
   return -EAFNOSUPPORT;

  }
 }

 a = attrs[IPVS_DAEMON_ATTR_MCAST_PORT];
 if (a)
  c.mcast_port = nla_get_u16(a);

 a = attrs[IPVS_DAEMON_ATTR_MCAST_TTL];
 if (a)
  c.mcast_ttl = nla_get_u8(a);




 if (ipvs->mixed_address_family_dests > 0)
  return -EINVAL;

 ret = start_sync_thread(ipvs, &c,
    nla_get_u32(attrs[IPVS_DAEMON_ATTR_STATE]));
 return ret;
}
