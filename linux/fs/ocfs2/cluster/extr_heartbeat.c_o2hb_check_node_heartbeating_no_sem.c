
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int testing_map ;


 int BITS_TO_LONGS (int ) ;
 int ML_HEARTBEAT ;
 int O2NM_MAX_NODES ;
 int mlog (int ,char*,int ) ;
 int o2hb_fill_node_map_from_callback (unsigned long*,int) ;
 int o2hb_live_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_bit (int ,unsigned long*) ;

int o2hb_check_node_heartbeating_no_sem(u8 node_num)
{
 unsigned long testing_map[BITS_TO_LONGS(O2NM_MAX_NODES)];

 spin_lock(&o2hb_live_lock);
 o2hb_fill_node_map_from_callback(testing_map, sizeof(testing_map));
 spin_unlock(&o2hb_live_lock);
 if (!test_bit(node_num, testing_map)) {
  mlog(ML_HEARTBEAT,
       "node (%u) does not have heartbeating enabled.\n",
       node_num);
  return 0;
 }

 return 1;
}
