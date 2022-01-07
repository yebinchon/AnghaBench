
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct can_rcv_lists_stats* rcv_lists_stats; struct can_pkg_stats* pkg_stats; } ;
struct net {TYPE_1__ can; } ;
struct can_rcv_lists_stats {int user_reset; int stats_reset; } ;
struct can_pkg_stats {int jiffies_init; } ;


 int jiffies ;
 int memset (struct can_pkg_stats*,int ,int) ;
 scalar_t__ user_reset ;

__attribute__((used)) static void can_init_stats(struct net *net)
{
 struct can_pkg_stats *pkg_stats = net->can.pkg_stats;
 struct can_rcv_lists_stats *rcv_lists_stats = net->can.rcv_lists_stats;





 memset(pkg_stats, 0, sizeof(struct can_pkg_stats));
 pkg_stats->jiffies_init = jiffies;

 rcv_lists_stats->stats_reset++;

 if (user_reset) {
  user_reset = 0;
  rcv_lists_stats->user_reset++;
 }
}
