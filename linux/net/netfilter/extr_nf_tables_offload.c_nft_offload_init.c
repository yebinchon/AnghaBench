
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int block_ing_entry ;
 int flow_indr_add_block_ing_cb (int *) ;
 int nft_offload_netdev_notifier ;
 int register_netdevice_notifier (int *) ;

int nft_offload_init(void)
{
 int err;

 err = register_netdevice_notifier(&nft_offload_netdev_notifier);
 if (err < 0)
  return err;

 flow_indr_add_block_ing_cb(&block_ing_entry);

 return 0;
}
