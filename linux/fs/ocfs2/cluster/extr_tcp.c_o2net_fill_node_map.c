
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2net_sock_container {int dummy; } ;


 int BITS_TO_LONGS (int) ;
 int BUG_ON (int) ;
 int O2NM_MAX_NODES ;
 int memset (unsigned long*,int ,unsigned int) ;
 int o2net_nn_from_num (int) ;
 int o2net_tx_can_proceed (int ,struct o2net_sock_container**,int*) ;
 int sc_put (struct o2net_sock_container*) ;
 int set_bit (int,unsigned long*) ;

void o2net_fill_node_map(unsigned long *map, unsigned bytes)
{
 struct o2net_sock_container *sc;
 int node, ret;

 BUG_ON(bytes < (BITS_TO_LONGS(O2NM_MAX_NODES) * sizeof(unsigned long)));

 memset(map, 0, bytes);
 for (node = 0; node < O2NM_MAX_NODES; ++node) {
  if (!o2net_tx_can_proceed(o2net_nn_from_num(node), &sc, &ret))
   continue;
  if (!ret) {
   set_bit(node, map);
   sc_put(sc);
  }
 }
}
