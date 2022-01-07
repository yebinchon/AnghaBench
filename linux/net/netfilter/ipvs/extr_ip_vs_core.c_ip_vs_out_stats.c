
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct TYPE_7__ {int cpustats; } ;
struct netns_ipvs {TYPE_3__ tot_stats; } ;
struct TYPE_6__ {int cpustats; } ;
struct ip_vs_service {TYPE_2__ stats; } ;
struct TYPE_5__ {int cpustats; } ;
struct ip_vs_dest {int flags; int svc; TYPE_1__ stats; } ;
struct TYPE_8__ {int outbytes; int outpkts; } ;
struct ip_vs_cpu_stats {int syncp; TYPE_4__ cnt; } ;
struct ip_vs_conn {struct netns_ipvs* ipvs; struct ip_vs_dest* dest; } ;


 int IP_VS_DEST_F_AVAILABLE ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 struct ip_vs_service* rcu_dereference (int ) ;
 struct ip_vs_cpu_stats* this_cpu_ptr (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static inline void
ip_vs_out_stats(struct ip_vs_conn *cp, struct sk_buff *skb)
{
 struct ip_vs_dest *dest = cp->dest;
 struct netns_ipvs *ipvs = cp->ipvs;

 if (dest && (dest->flags & IP_VS_DEST_F_AVAILABLE)) {
  struct ip_vs_cpu_stats *s;
  struct ip_vs_service *svc;

  local_bh_disable();

  s = this_cpu_ptr(dest->stats.cpustats);
  u64_stats_update_begin(&s->syncp);
  s->cnt.outpkts++;
  s->cnt.outbytes += skb->len;
  u64_stats_update_end(&s->syncp);

  svc = rcu_dereference(dest->svc);
  s = this_cpu_ptr(svc->stats.cpustats);
  u64_stats_update_begin(&s->syncp);
  s->cnt.outpkts++;
  s->cnt.outbytes += skb->len;
  u64_stats_update_end(&s->syncp);

  s = this_cpu_ptr(ipvs->tot_stats.cpustats);
  u64_stats_update_begin(&s->syncp);
  s->cnt.outpkts++;
  s->cnt.outbytes += skb->len;
  u64_stats_update_end(&s->syncp);

  local_bh_enable();
 }
}
