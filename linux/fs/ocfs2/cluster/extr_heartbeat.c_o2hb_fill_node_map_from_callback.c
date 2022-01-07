
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BITS_TO_LONGS (int ) ;
 int BUG_ON (int) ;
 int O2NM_MAX_NODES ;
 int memcpy (unsigned long*,int *,unsigned int) ;
 int o2hb_live_node_bitmap ;

__attribute__((used)) static void o2hb_fill_node_map_from_callback(unsigned long *map,
          unsigned bytes)
{
 BUG_ON(bytes < (BITS_TO_LONGS(O2NM_MAX_NODES) * sizeof(unsigned long)));

 memcpy(map, &o2hb_live_node_bitmap, bytes);
}
