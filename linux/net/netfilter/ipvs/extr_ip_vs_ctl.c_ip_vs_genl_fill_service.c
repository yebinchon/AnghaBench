
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct ip_vs_flags {int mask; int flags; } ;
struct ip_vs_service {int fwmark; int timeout; int stats; int netmask; int pe; int scheduler; int port; struct ip_vs_flags addr; int protocol; int af; int flags; } ;
struct ip_vs_scheduler {char* name; } ;
struct ip_vs_pe {char* name; } ;
struct ip_vs_kstats {int dummy; } ;
typedef int flags ;


 int EMSGSIZE ;
 int HZ ;
 int IPVS_CMD_ATTR_SERVICE ;
 int IPVS_SVC_ATTR_ADDR ;
 int IPVS_SVC_ATTR_AF ;
 int IPVS_SVC_ATTR_FLAGS ;
 int IPVS_SVC_ATTR_FWMARK ;
 int IPVS_SVC_ATTR_NETMASK ;
 int IPVS_SVC_ATTR_PE_NAME ;
 int IPVS_SVC_ATTR_PORT ;
 int IPVS_SVC_ATTR_PROTOCOL ;
 int IPVS_SVC_ATTR_SCHED_NAME ;
 int IPVS_SVC_ATTR_STATS ;
 int IPVS_SVC_ATTR_STATS64 ;
 int IPVS_SVC_ATTR_TIMEOUT ;
 int ip_vs_copy_stats (struct ip_vs_kstats*,int *) ;
 scalar_t__ ip_vs_genl_fill_stats (struct sk_buff*,int ,struct ip_vs_kstats*) ;
 scalar_t__ ip_vs_genl_fill_stats64 (struct sk_buff*,int ,struct ip_vs_kstats*) ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,struct ip_vs_flags*) ;
 scalar_t__ nla_put_be16 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,char*) ;
 scalar_t__ nla_put_u16 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int) ;
 void* rcu_dereference_protected (int ,int) ;

__attribute__((used)) static int ip_vs_genl_fill_service(struct sk_buff *skb,
       struct ip_vs_service *svc)
{
 struct ip_vs_scheduler *sched;
 struct ip_vs_pe *pe;
 struct nlattr *nl_service;
 struct ip_vs_flags flags = { .flags = svc->flags,
         .mask = ~0 };
 struct ip_vs_kstats kstats;
 char *sched_name;

 nl_service = nla_nest_start_noflag(skb, IPVS_CMD_ATTR_SERVICE);
 if (!nl_service)
  return -EMSGSIZE;

 if (nla_put_u16(skb, IPVS_SVC_ATTR_AF, svc->af))
  goto nla_put_failure;
 if (svc->fwmark) {
  if (nla_put_u32(skb, IPVS_SVC_ATTR_FWMARK, svc->fwmark))
   goto nla_put_failure;
 } else {
  if (nla_put_u16(skb, IPVS_SVC_ATTR_PROTOCOL, svc->protocol) ||
      nla_put(skb, IPVS_SVC_ATTR_ADDR, sizeof(svc->addr), &svc->addr) ||
      nla_put_be16(skb, IPVS_SVC_ATTR_PORT, svc->port))
   goto nla_put_failure;
 }

 sched = rcu_dereference_protected(svc->scheduler, 1);
 sched_name = sched ? sched->name : "none";
 pe = rcu_dereference_protected(svc->pe, 1);
 if (nla_put_string(skb, IPVS_SVC_ATTR_SCHED_NAME, sched_name) ||
     (pe && nla_put_string(skb, IPVS_SVC_ATTR_PE_NAME, pe->name)) ||
     nla_put(skb, IPVS_SVC_ATTR_FLAGS, sizeof(flags), &flags) ||
     nla_put_u32(skb, IPVS_SVC_ATTR_TIMEOUT, svc->timeout / HZ) ||
     nla_put_be32(skb, IPVS_SVC_ATTR_NETMASK, svc->netmask))
  goto nla_put_failure;
 ip_vs_copy_stats(&kstats, &svc->stats);
 if (ip_vs_genl_fill_stats(skb, IPVS_SVC_ATTR_STATS, &kstats))
  goto nla_put_failure;
 if (ip_vs_genl_fill_stats64(skb, IPVS_SVC_ATTR_STATS64, &kstats))
  goto nla_put_failure;

 nla_nest_end(skb, nl_service);

 return 0;

nla_put_failure:
 nla_nest_cancel(skb, nl_service);
 return -EMSGSIZE;
}
