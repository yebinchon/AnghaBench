
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdp ;
typedef int u32 ;
struct netdev_bpf {int command; int prog_id; } ;
struct net_device {int dummy; } ;
typedef enum bpf_netdev_command { ____Placeholder_bpf_netdev_command } bpf_netdev_command ;
typedef scalar_t__ (* bpf_op_t ) (struct net_device*,struct netdev_bpf*) ;


 int WARN_ON (int) ;
 int XDP_QUERY_PROG ;
 int memset (struct netdev_bpf*,int ,int) ;

u32 __dev_xdp_query(struct net_device *dev, bpf_op_t bpf_op,
      enum bpf_netdev_command cmd)
{
 struct netdev_bpf xdp;

 if (!bpf_op)
  return 0;

 memset(&xdp, 0, sizeof(xdp));
 xdp.command = cmd;


 WARN_ON(bpf_op(dev, &xdp) < 0 && cmd == XDP_QUERY_PROG);

 return xdp.prog_id;
}
