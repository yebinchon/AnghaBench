
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int block_ing_entry ;
 int flow_indr_del_block_ing_cb (int *) ;
 int nft_offload_netdev_notifier ;
 int unregister_netdevice_notifier (int *) ;

void nft_offload_exit(void)
{
 flow_indr_del_block_ing_cb(&block_ing_entry);
 unregister_netdevice_notifier(&nft_offload_netdev_notifier);
}
