
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct xdp_sock {int dummy; } ;
struct xdp_buff {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct bpf_redirect_info {int map; int * tgt_value; scalar_t__ tgt_index; } ;
struct bpf_prog {int dummy; } ;
struct bpf_map {scalar_t__ map_type; } ;
struct bpf_dtab_netdev {int dummy; } ;


 scalar_t__ BPF_MAP_TYPE_DEVMAP ;
 scalar_t__ BPF_MAP_TYPE_DEVMAP_HASH ;
 scalar_t__ BPF_MAP_TYPE_XSKMAP ;
 int EBADRQC ;
 int WRITE_ONCE (int ,int *) ;
 int _trace_xdp_redirect_map (struct net_device*,struct bpf_prog*,void*,struct bpf_map*,scalar_t__) ;
 int _trace_xdp_redirect_map_err (struct net_device*,struct bpf_prog*,void*,struct bpf_map*,scalar_t__,int) ;
 int bpf_redirect_info ;
 int consume_skb (struct sk_buff*) ;
 int dev_map_generic_redirect (struct bpf_dtab_netdev*,struct sk_buff*,struct bpf_prog*) ;
 struct bpf_redirect_info* this_cpu_ptr (int *) ;
 scalar_t__ unlikely (int) ;
 int xsk_generic_rcv (struct xdp_sock*,struct xdp_buff*) ;

__attribute__((used)) static int xdp_do_generic_redirect_map(struct net_device *dev,
           struct sk_buff *skb,
           struct xdp_buff *xdp,
           struct bpf_prog *xdp_prog,
           struct bpf_map *map)
{
 struct bpf_redirect_info *ri = this_cpu_ptr(&bpf_redirect_info);
 u32 index = ri->tgt_index;
 void *fwd = ri->tgt_value;
 int err = 0;

 ri->tgt_index = 0;
 ri->tgt_value = ((void*)0);
 WRITE_ONCE(ri->map, ((void*)0));

 if (map->map_type == BPF_MAP_TYPE_DEVMAP ||
     map->map_type == BPF_MAP_TYPE_DEVMAP_HASH) {
  struct bpf_dtab_netdev *dst = fwd;

  err = dev_map_generic_redirect(dst, skb, xdp_prog);
  if (unlikely(err))
   goto err;
 } else if (map->map_type == BPF_MAP_TYPE_XSKMAP) {
  struct xdp_sock *xs = fwd;

  err = xsk_generic_rcv(xs, xdp);
  if (err)
   goto err;
  consume_skb(skb);
 } else {

  err = -EBADRQC;
  goto err;
 }

 _trace_xdp_redirect_map(dev, xdp_prog, fwd, map, index);
 return 0;
err:
 _trace_xdp_redirect_map_err(dev, xdp_prog, fwd, map, index, err);
 return err;
}
