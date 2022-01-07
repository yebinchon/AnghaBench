
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct xdp_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct bpf_redirect_info {struct bpf_map* map_to_flush; int map; int * tgt_value; scalar_t__ tgt_index; } ;
struct bpf_prog {int dummy; } ;
struct bpf_map {int dummy; } ;


 int WRITE_ONCE (int ,int *) ;
 int __bpf_tx_xdp_map (struct net_device*,void*,struct bpf_map*,struct xdp_buff*,scalar_t__) ;
 int _trace_xdp_redirect_map (struct net_device*,struct bpf_prog*,void*,struct bpf_map*,scalar_t__) ;
 int _trace_xdp_redirect_map_err (struct net_device*,struct bpf_prog*,void*,struct bpf_map*,scalar_t__,int) ;
 scalar_t__ unlikely (int) ;
 int xdp_do_flush_map () ;

__attribute__((used)) static int xdp_do_redirect_map(struct net_device *dev, struct xdp_buff *xdp,
          struct bpf_prog *xdp_prog, struct bpf_map *map,
          struct bpf_redirect_info *ri)
{
 u32 index = ri->tgt_index;
 void *fwd = ri->tgt_value;
 int err;

 ri->tgt_index = 0;
 ri->tgt_value = ((void*)0);
 WRITE_ONCE(ri->map, ((void*)0));

 if (ri->map_to_flush && unlikely(ri->map_to_flush != map))
  xdp_do_flush_map();

 err = __bpf_tx_xdp_map(dev, fwd, map, xdp, index);
 if (unlikely(err))
  goto err;

 ri->map_to_flush = map;
 _trace_xdp_redirect_map(dev, xdp_prog, fwd, map, index);
 return 0;
err:
 _trace_xdp_redirect_map_err(dev, xdp_prog, fwd, map, index, err);
 return err;
}
