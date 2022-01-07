
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dev; int len; } ;
struct bpf_prog {int dummy; } ;
struct bpf_dtab_netdev {int dev; } ;


 int generic_xdp_tx (struct sk_buff*,struct bpf_prog*) ;
 scalar_t__ unlikely (int) ;
 int xdp_ok_fwd_dev (int ,int ) ;

int dev_map_generic_redirect(struct bpf_dtab_netdev *dst, struct sk_buff *skb,
        struct bpf_prog *xdp_prog)
{
 int err;

 err = xdp_ok_fwd_dev(dst->dev, skb->len);
 if (unlikely(err))
  return err;
 skb->dev = dst->dev;
 generic_xdp_tx(skb, xdp_prog);

 return 0;
}
