
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlist_head {int dummy; } ;
struct datapath {int * meters; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_HLIST_HEAD (int *) ;
 int METER_HASH_BUCKETS ;
 int * kmalloc_array (int,int,int ) ;

int ovs_meters_init(struct datapath *dp)
{
 int i;

 dp->meters = kmalloc_array(METER_HASH_BUCKETS,
       sizeof(struct hlist_head), GFP_KERNEL);

 if (!dp->meters)
  return -ENOMEM;

 for (i = 0; i < METER_HASH_BUCKETS; i++)
  INIT_HLIST_HEAD(&dp->meters[i]);

 return 0;
}
