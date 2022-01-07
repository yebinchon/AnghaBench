
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ip_vs_service_entry {int timeout; int stats; int num_dests; int netmask; int flags; int sched_name; int fwmark; int port; int addr; int protocol; } ;
struct TYPE_2__ {int ip; } ;
struct ip_vs_service {int timeout; int stats; int num_dests; int netmask; int flags; int fwmark; int port; TYPE_1__ addr; int protocol; int scheduler; } ;
struct ip_vs_scheduler {char* name; } ;
struct ip_vs_kstats {int dummy; } ;


 int HZ ;
 int ip_vs_copy_stats (struct ip_vs_kstats*,int *) ;
 int ip_vs_export_stats_user (int *,struct ip_vs_kstats*) ;
 struct ip_vs_scheduler* rcu_dereference_protected (int ,int) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void
ip_vs_copy_service(struct ip_vs_service_entry *dst, struct ip_vs_service *src)
{
 struct ip_vs_scheduler *sched;
 struct ip_vs_kstats kstats;
 char *sched_name;

 sched = rcu_dereference_protected(src->scheduler, 1);
 sched_name = sched ? sched->name : "none";
 dst->protocol = src->protocol;
 dst->addr = src->addr.ip;
 dst->port = src->port;
 dst->fwmark = src->fwmark;
 strlcpy(dst->sched_name, sched_name, sizeof(dst->sched_name));
 dst->flags = src->flags;
 dst->timeout = src->timeout / HZ;
 dst->netmask = src->netmask;
 dst->num_dests = src->num_dests;
 ip_vs_copy_stats(&kstats, &src->stats);
 ip_vs_export_stats_user(&dst->stats, &kstats);
}
