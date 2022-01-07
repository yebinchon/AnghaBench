
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct net_dm_hw_metadata {int dummy; } ;
struct devlink_trap_item {TYPE_1__* group_item; int stats; } ;
struct devlink_port {int dummy; } ;
struct devlink {int dummy; } ;
struct TYPE_2__ {int stats; } ;


 int devlink_trap_report_metadata_fill (struct net_dm_hw_metadata*,struct devlink_trap_item*,struct devlink_port*) ;
 int devlink_trap_stats_update (int ,int ) ;
 int net_dm_hw_report (struct sk_buff*,struct net_dm_hw_metadata*) ;

void devlink_trap_report(struct devlink *devlink, struct sk_buff *skb,
    void *trap_ctx, struct devlink_port *in_devlink_port)
{
 struct devlink_trap_item *trap_item = trap_ctx;
 struct net_dm_hw_metadata hw_metadata = {};

 devlink_trap_stats_update(trap_item->stats, skb->len);
 devlink_trap_stats_update(trap_item->group_item->stats, skb->len);

 devlink_trap_report_metadata_fill(&hw_metadata, trap_item,
       in_devlink_port);
 net_dm_hw_report(skb, &hw_metadata);
}
