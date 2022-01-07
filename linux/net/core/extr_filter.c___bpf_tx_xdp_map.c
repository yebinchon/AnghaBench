
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdp_sock {int dummy; } ;
struct xdp_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct bpf_map {int map_type; } ;
struct bpf_dtab_netdev {int dummy; } ;
struct bpf_cpu_map_entry {int dummy; } ;






 int __xsk_map_redirect (struct bpf_map*,struct xdp_buff*,struct xdp_sock*) ;
 int cpu_map_enqueue (struct bpf_cpu_map_entry*,struct xdp_buff*,struct net_device*) ;
 int dev_map_enqueue (struct bpf_dtab_netdev*,struct xdp_buff*,struct net_device*) ;
 int unlikely (int) ;

__attribute__((used)) static int __bpf_tx_xdp_map(struct net_device *dev_rx, void *fwd,
       struct bpf_map *map,
       struct xdp_buff *xdp,
       u32 index)
{
 int err;

 switch (map->map_type) {
 case 130:
 case 129: {
  struct bpf_dtab_netdev *dst = fwd;

  err = dev_map_enqueue(dst, xdp, dev_rx);
  if (unlikely(err))
   return err;
  break;
 }
 case 131: {
  struct bpf_cpu_map_entry *rcpu = fwd;

  err = cpu_map_enqueue(rcpu, xdp, dev_rx);
  if (unlikely(err))
   return err;
  break;
 }
 case 128: {
  struct xdp_sock *xs = fwd;

  err = __xsk_map_redirect(map, xdp, xs);
  return err;
 }
 default:
  break;
 }
 return 0;
}
