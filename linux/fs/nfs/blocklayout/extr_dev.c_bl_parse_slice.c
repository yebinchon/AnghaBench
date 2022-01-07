
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; int start; int volume; } ;
struct pnfs_block_volume {TYPE_1__ slice; } ;
struct pnfs_block_dev {int len; int disk_offset; } ;
struct nfs_server {int dummy; } ;
typedef int gfp_t ;


 int bl_parse_deviceid (struct nfs_server*,struct pnfs_block_dev*,struct pnfs_block_volume*,int ,int ) ;

__attribute__((used)) static int
bl_parse_slice(struct nfs_server *server, struct pnfs_block_dev *d,
  struct pnfs_block_volume *volumes, int idx, gfp_t gfp_mask)
{
 struct pnfs_block_volume *v = &volumes[idx];
 int ret;

 ret = bl_parse_deviceid(server, d, volumes, v->slice.volume, gfp_mask);
 if (ret)
  return ret;

 d->disk_offset = v->slice.start;
 d->len = v->slice.len;
 return 0;
}
