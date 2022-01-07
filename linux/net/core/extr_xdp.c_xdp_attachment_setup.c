
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_attachment_info {int flags; scalar_t__ prog; } ;
struct netdev_bpf {int flags; scalar_t__ prog; } ;


 int bpf_prog_put (scalar_t__) ;

void xdp_attachment_setup(struct xdp_attachment_info *info,
     struct netdev_bpf *bpf)
{
 if (info->prog)
  bpf_prog_put(info->prog);
 info->prog = bpf->prog;
 info->flags = bpf->flags;
}
