
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct bpf_prog {int dummy; } ;


 int __bpf_offload_dev_match (struct bpf_prog*,struct net_device*) ;
 int bpf_devs_lock ;
 int down_read (int *) ;
 int up_read (int *) ;

bool bpf_offload_dev_match(struct bpf_prog *prog, struct net_device *netdev)
{
 bool ret;

 down_read(&bpf_devs_lock);
 ret = __bpf_offload_dev_match(prog, netdev);
 up_read(&bpf_devs_lock);

 return ret;
}
