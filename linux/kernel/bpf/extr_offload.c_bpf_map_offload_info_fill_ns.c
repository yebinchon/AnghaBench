
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ns_get_path_bpf_map_args {TYPE_1__* info; TYPE_2__* offmap; } ;
struct ns_common {int dummy; } ;
struct net {struct ns_common ns; } ;
struct TYPE_6__ {scalar_t__ ifindex; } ;
struct TYPE_5__ {TYPE_3__* netdev; } ;
struct TYPE_4__ {scalar_t__ ifindex; } ;


 int bpf_devs_lock ;
 struct net* dev_net (TYPE_3__*) ;
 int down_read (int *) ;
 int get_net (struct net*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int up_read (int *) ;

__attribute__((used)) static struct ns_common *bpf_map_offload_info_fill_ns(void *private_data)
{
 struct ns_get_path_bpf_map_args *args = private_data;
 struct ns_common *ns;
 struct net *net;

 rtnl_lock();
 down_read(&bpf_devs_lock);

 if (args->offmap->netdev) {
  args->info->ifindex = args->offmap->netdev->ifindex;
  net = dev_net(args->offmap->netdev);
  get_net(net);
  ns = &net->ns;
 } else {
  args->info->ifindex = 0;
  ns = ((void*)0);
 }

 up_read(&bpf_devs_lock);
 rtnl_unlock();

 return ns;
}
