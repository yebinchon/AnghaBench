
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct bpf_prog_offload {struct net_device* netdev; } ;
struct bpf_prog {TYPE_1__* aux; } ;
struct bpf_offload_netdev {scalar_t__ offdev; } ;
struct TYPE_2__ {struct bpf_prog_offload* offload; } ;


 struct bpf_offload_netdev* bpf_offload_find_netdev (struct net_device*) ;
 int bpf_prog_is_dev_bound (TYPE_1__*) ;

__attribute__((used)) static bool __bpf_offload_dev_match(struct bpf_prog *prog,
        struct net_device *netdev)
{
 struct bpf_offload_netdev *ondev1, *ondev2;
 struct bpf_prog_offload *offload;

 if (!bpf_prog_is_dev_bound(prog->aux))
  return 0;

 offload = prog->aux->offload;
 if (!offload)
  return 0;
 if (offload->netdev == netdev)
  return 1;

 ondev1 = bpf_offload_find_netdev(offload->netdev);
 ondev2 = bpf_offload_find_netdev(netdev);

 return ondev1 && ondev2 && ondev1->offdev == ondev2->offdev;
}
