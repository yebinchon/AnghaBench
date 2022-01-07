
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_attachment_info {int flags; scalar_t__ prog; } ;
struct netdev_bpf {int flags; int extack; } ;


 int NL_SET_ERR_MSG (int ,char*) ;
 int XDP_FLAGS_MODES ;

bool xdp_attachment_flags_ok(struct xdp_attachment_info *info,
        struct netdev_bpf *bpf)
{
 if (info->prog && (bpf->flags ^ info->flags) & XDP_FLAGS_MODES) {
  NL_SET_ERR_MSG(bpf->extack,
          "program loaded with different flags");
  return 0;
 }
 return 1;
}
