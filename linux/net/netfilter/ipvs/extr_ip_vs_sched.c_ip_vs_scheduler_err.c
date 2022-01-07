
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ip; int in6; } ;
struct ip_vs_service {scalar_t__ af; int port; TYPE_1__ addr; int protocol; int fwmark; int scheduler; } ;
struct ip_vs_scheduler {char* name; } ;


 scalar_t__ AF_INET6 ;
 int IP_VS_ERR_RL (char*,char*,int ,int *,char const*,...) ;
 int ip_vs_proto_name (int ) ;
 int ntohs (int ) ;
 struct ip_vs_scheduler* rcu_dereference (int ) ;

void ip_vs_scheduler_err(struct ip_vs_service *svc, const char *msg)
{
 struct ip_vs_scheduler *sched = rcu_dereference(svc->scheduler);
 char *sched_name = sched ? sched->name : "none";

 if (svc->fwmark) {
  IP_VS_ERR_RL("%s: FWM %u 0x%08X - %s\n",
        sched_name, svc->fwmark, svc->fwmark, msg);






 } else {
  IP_VS_ERR_RL("%s: %s %pI4:%d - %s\n",
        sched_name, ip_vs_proto_name(svc->protocol),
        &svc->addr.ip, ntohs(svc->port), msg);
 }
}
