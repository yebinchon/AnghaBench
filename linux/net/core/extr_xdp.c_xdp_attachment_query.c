
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xdp_attachment_info {int flags; TYPE_2__* prog; } ;
struct netdev_bpf {int prog_flags; int prog_id; } ;
struct TYPE_4__ {TYPE_1__* aux; } ;
struct TYPE_3__ {int id; } ;



int xdp_attachment_query(struct xdp_attachment_info *info,
    struct netdev_bpf *bpf)
{
 bpf->prog_id = info->prog ? info->prog->aux->id : 0;
 bpf->prog_flags = info->prog ? info->flags : 0;
 return 0;
}
