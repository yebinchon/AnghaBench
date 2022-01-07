
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct bpf_offload_netdev {int offdev_netdevs; int l; int maps; int progs; struct bpf_offload_dev* offdev; struct net_device* netdev; } ;
struct bpf_offload_dev {int netdevs; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int bpf_devs_lock ;
 int down_write (int *) ;
 int kfree (struct bpf_offload_netdev*) ;
 struct bpf_offload_netdev* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int netdev_warn (struct net_device*,char*) ;
 int offdevs ;
 int offdevs_params ;
 int rhashtable_insert_fast (int *,int *,int ) ;
 int up_write (int *) ;

int bpf_offload_dev_netdev_register(struct bpf_offload_dev *offdev,
        struct net_device *netdev)
{
 struct bpf_offload_netdev *ondev;
 int err;

 ondev = kzalloc(sizeof(*ondev), GFP_KERNEL);
 if (!ondev)
  return -ENOMEM;

 ondev->netdev = netdev;
 ondev->offdev = offdev;
 INIT_LIST_HEAD(&ondev->progs);
 INIT_LIST_HEAD(&ondev->maps);

 down_write(&bpf_devs_lock);
 err = rhashtable_insert_fast(&offdevs, &ondev->l, offdevs_params);
 if (err) {
  netdev_warn(netdev, "failed to register for BPF offload\n");
  goto err_unlock_free;
 }

 list_add(&ondev->offdev_netdevs, &offdev->netdevs);
 up_write(&bpf_devs_lock);
 return 0;

err_unlock_free:
 up_write(&bpf_devs_lock);
 kfree(ondev);
 return err;
}
