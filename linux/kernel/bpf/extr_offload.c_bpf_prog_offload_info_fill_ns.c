
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ns_get_path_bpf_prog_args {TYPE_2__* info; TYPE_3__* prog; } ;
struct ns_common {int dummy; } ;
struct net {struct ns_common ns; } ;
struct bpf_prog_aux {TYPE_1__* offload; } ;
struct TYPE_8__ {scalar_t__ ifindex; } ;
struct TYPE_7__ {struct bpf_prog_aux* aux; } ;
struct TYPE_6__ {scalar_t__ ifindex; } ;
struct TYPE_5__ {TYPE_4__* netdev; } ;


 int bpf_devs_lock ;
 struct net* dev_net (TYPE_4__*) ;
 int down_read (int *) ;
 int get_net (struct net*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int up_read (int *) ;

__attribute__((used)) static struct ns_common *bpf_prog_offload_info_fill_ns(void *private_data)
{
 struct ns_get_path_bpf_prog_args *args = private_data;
 struct bpf_prog_aux *aux = args->prog->aux;
 struct ns_common *ns;
 struct net *net;

 rtnl_lock();
 down_read(&bpf_devs_lock);

 if (aux->offload) {
  args->info->ifindex = aux->offload->netdev->ifindex;
  net = dev_net(aux->offload->netdev);
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
