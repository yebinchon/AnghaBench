
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct bpf_offload_netdev {int dummy; } ;


 int bpf_devs_lock ;
 int lockdep_assert_held (int *) ;
 int offdevs ;
 int offdevs_inited ;
 int offdevs_params ;
 struct bpf_offload_netdev* rhashtable_lookup_fast (int *,struct net_device**,int ) ;

__attribute__((used)) static struct bpf_offload_netdev *
bpf_offload_find_netdev(struct net_device *netdev)
{
 lockdep_assert_held(&bpf_devs_lock);

 if (!offdevs_inited)
  return ((void*)0);
 return rhashtable_lookup_fast(&offdevs, &netdev, offdevs_params);
}
