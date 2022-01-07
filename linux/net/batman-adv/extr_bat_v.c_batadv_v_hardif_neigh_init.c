
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int metric_work; int throughput; } ;
struct batadv_hardif_neigh_node {TYPE_1__ bat_v; } ;


 int INIT_WORK (int *,int ) ;
 int batadv_v_elp_throughput_metric_update ;
 int ewma_throughput_init (int *) ;

__attribute__((used)) static void
batadv_v_hardif_neigh_init(struct batadv_hardif_neigh_node *hardif_neigh)
{
 ewma_throughput_init(&hardif_neigh->bat_v.throughput);
 INIT_WORK(&hardif_neigh->bat_v.metric_work,
    batadv_v_elp_throughput_metric_update);
}
