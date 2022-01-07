
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_frame {struct net_device* dev_rx; } ;
struct xdp_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct bpf_cpu_map_entry {int dummy; } ;


 int EOVERFLOW ;
 int bq_enqueue (struct bpf_cpu_map_entry*,struct xdp_frame*) ;
 struct xdp_frame* convert_to_xdp_frame (struct xdp_buff*) ;
 scalar_t__ unlikely (int) ;

int cpu_map_enqueue(struct bpf_cpu_map_entry *rcpu, struct xdp_buff *xdp,
      struct net_device *dev_rx)
{
 struct xdp_frame *xdpf;

 xdpf = convert_to_xdp_frame(xdp);
 if (unlikely(!xdpf))
  return -EOVERFLOW;


 xdpf->dev_rx = dev_rx;

 bq_enqueue(rcpu, xdpf);
 return 0;
}
