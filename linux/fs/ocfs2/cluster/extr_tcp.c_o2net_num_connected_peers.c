
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_read (int *) ;
 int o2net_connected_peers ;

int o2net_num_connected_peers(void)
{
 return atomic_read(&o2net_connected_peers);
}
