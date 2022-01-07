
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hlist_head {int dummy; } ;
struct datapath {struct hlist_head* meters; } ;


 int METER_HASH_BUCKETS ;

__attribute__((used)) static struct hlist_head *meter_hash_bucket(const struct datapath *dp,
         u32 meter_id)
{
 return &dp->meters[meter_id & (METER_HASH_BUCKETS - 1)];
}
