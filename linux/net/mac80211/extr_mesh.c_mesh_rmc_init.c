
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mesh_rmc {int dummy; } ;
struct TYPE_4__ {TYPE_3__* rmc; } ;
struct TYPE_5__ {TYPE_1__ mesh; } ;
struct ieee80211_sub_if_data {TYPE_2__ u; } ;
struct TYPE_6__ {int idx_mask; int * bucket; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_HLIST_HEAD (int *) ;
 int RMC_BUCKETS ;
 TYPE_3__* kmalloc (int,int ) ;

int mesh_rmc_init(struct ieee80211_sub_if_data *sdata)
{
 int i;

 sdata->u.mesh.rmc = kmalloc(sizeof(struct mesh_rmc), GFP_KERNEL);
 if (!sdata->u.mesh.rmc)
  return -ENOMEM;
 sdata->u.mesh.rmc->idx_mask = RMC_BUCKETS - 1;
 for (i = 0; i < RMC_BUCKETS; i++)
  INIT_HLIST_HEAD(&sdata->u.mesh.rmc->bucket[i]);
 return 0;
}
