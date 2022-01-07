
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdp ;
typedef int u32 ;
struct netlink_ext_ack {int dummy; } ;
struct netdev_bpf {int flags; struct bpf_prog* prog; struct netlink_ext_ack* extack; int command; } ;
struct net_device {int dummy; } ;
struct bpf_prog {int dummy; } ;
typedef int (* bpf_op_t ) (struct net_device*,struct netdev_bpf*) ;


 int XDP_FLAGS_HW_MODE ;
 int XDP_SETUP_PROG ;
 int XDP_SETUP_PROG_HW ;
 int memset (struct netdev_bpf*,int ,int) ;

__attribute__((used)) static int dev_xdp_install(struct net_device *dev, bpf_op_t bpf_op,
      struct netlink_ext_ack *extack, u32 flags,
      struct bpf_prog *prog)
{
 struct netdev_bpf xdp;

 memset(&xdp, 0, sizeof(xdp));
 if (flags & XDP_FLAGS_HW_MODE)
  xdp.command = XDP_SETUP_PROG_HW;
 else
  xdp.command = XDP_SETUP_PROG;
 xdp.extack = extack;
 xdp.flags = flags;
 xdp.prog = prog;

 return bpf_op(dev, &xdp);
}
