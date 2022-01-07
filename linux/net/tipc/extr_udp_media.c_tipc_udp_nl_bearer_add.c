
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udp_media_addr {int member_0; } ;
struct TYPE_2__ {int value; } ;
struct tipc_bearer {TYPE_1__ bcast_addr; } ;
struct nlattr {int dummy; } ;


 int EINVAL ;
 int TIPC_NLA_UDP_MAX ;
 size_t TIPC_NLA_UDP_REMOTE ;
 scalar_t__ nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr*,int ,int *) ;
 int pr_err (char*) ;
 int tipc_nl_udp_policy ;
 int tipc_parse_udp_addr (struct nlattr*,struct udp_media_addr*,int *) ;
 scalar_t__ tipc_udp_is_known_peer (struct tipc_bearer*,struct udp_media_addr*) ;
 scalar_t__ tipc_udp_is_mcast_addr (struct udp_media_addr*) ;
 int tipc_udp_rcast_add (struct tipc_bearer*,struct udp_media_addr*) ;

int tipc_udp_nl_bearer_add(struct tipc_bearer *b, struct nlattr *attr)
{
 int err;
 struct udp_media_addr addr = {0};
 struct nlattr *opts[TIPC_NLA_UDP_MAX + 1];
 struct udp_media_addr *dst;

 if (nla_parse_nested_deprecated(opts, TIPC_NLA_UDP_MAX, attr, tipc_nl_udp_policy, ((void*)0)))
  return -EINVAL;

 if (!opts[TIPC_NLA_UDP_REMOTE])
  return -EINVAL;

 err = tipc_parse_udp_addr(opts[TIPC_NLA_UDP_REMOTE], &addr, ((void*)0));
 if (err)
  return err;

 dst = (struct udp_media_addr *)&b->bcast_addr.value;
 if (tipc_udp_is_mcast_addr(dst)) {
  pr_err("Can't add remote ip to TIPC UDP multicast bearer\n");
  return -EINVAL;
 }

 if (tipc_udp_is_known_peer(b, &addr))
  return 0;

 return tipc_udp_rcast_add(b, &addr);
}
