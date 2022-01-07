
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netdev_bpf {int command; int prog_id; struct bpf_prog* prog; } ;
struct net_device {int xdp_prog; } ;
struct bpf_prog {TYPE_1__* aux; } ;
struct TYPE_2__ {int id; } ;


 int EINVAL ;


 int bpf_prog_put (struct bpf_prog*) ;
 int dev_disable_gro_hw (struct net_device*) ;
 int dev_disable_lro (struct net_device*) ;
 int generic_xdp_needed_key ;
 int rcu_assign_pointer (int ,struct bpf_prog*) ;
 struct bpf_prog* rtnl_dereference (int ) ;
 int static_branch_dec (int *) ;
 int static_branch_inc (int *) ;

__attribute__((used)) static int generic_xdp_install(struct net_device *dev, struct netdev_bpf *xdp)
{
 struct bpf_prog *old = rtnl_dereference(dev->xdp_prog);
 struct bpf_prog *new = xdp->prog;
 int ret = 0;

 switch (xdp->command) {
 case 128:
  rcu_assign_pointer(dev->xdp_prog, new);
  if (old)
   bpf_prog_put(old);

  if (old && !new) {
   static_branch_dec(&generic_xdp_needed_key);
  } else if (new && !old) {
   static_branch_inc(&generic_xdp_needed_key);
   dev_disable_lro(dev);
   dev_disable_gro_hw(dev);
  }
  break;

 case 129:
  xdp->prog_id = old ? old->aux->id : 0;
  break;

 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
