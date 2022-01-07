
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xt_rateest_target_info {TYPE_1__* est; } ;
struct xt_action_param {struct xt_rateest_target_info* targinfo; } ;
struct sk_buff {scalar_t__ len; } ;
struct gnet_stats_basic_packed {int packets; int bytes; } ;
struct TYPE_2__ {int lock; struct gnet_stats_basic_packed bstats; } ;


 unsigned int XT_CONTINUE ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static unsigned int
xt_rateest_tg(struct sk_buff *skb, const struct xt_action_param *par)
{
 const struct xt_rateest_target_info *info = par->targinfo;
 struct gnet_stats_basic_packed *stats = &info->est->bstats;

 spin_lock_bh(&info->est->lock);
 stats->bytes += skb->len;
 stats->packets++;
 spin_unlock_bh(&info->est->lock);

 return XT_CONTINUE;
}
