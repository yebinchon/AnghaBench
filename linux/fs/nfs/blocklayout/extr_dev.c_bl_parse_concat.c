
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_4__ {int volumes_count; int * volumes; } ;
struct pnfs_block_volume {TYPE_1__ concat; } ;
struct pnfs_block_dev {int map; scalar_t__ len; TYPE_2__* children; int nr_children; } ;
struct nfs_server {int dummy; } ;
typedef int gfp_t ;
struct TYPE_5__ {scalar_t__ len; int start; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int bl_map_concat ;
 int bl_parse_deviceid (struct nfs_server*,TYPE_2__*,struct pnfs_block_volume*,int ,int ) ;
 TYPE_2__* kcalloc (int,int,int ) ;

__attribute__((used)) static int
bl_parse_concat(struct nfs_server *server, struct pnfs_block_dev *d,
  struct pnfs_block_volume *volumes, int idx, gfp_t gfp_mask)
{
 struct pnfs_block_volume *v = &volumes[idx];
 u64 len = 0;
 int ret, i;

 d->children = kcalloc(v->concat.volumes_count,
   sizeof(struct pnfs_block_dev), GFP_KERNEL);
 if (!d->children)
  return -ENOMEM;

 for (i = 0; i < v->concat.volumes_count; i++) {
  ret = bl_parse_deviceid(server, &d->children[i],
    volumes, v->concat.volumes[i], gfp_mask);
  if (ret)
   return ret;

  d->nr_children++;
  d->children[i].start += len;
  len += d->children[i].len;
 }

 d->len = len;
 d->map = bl_map_concat;
 return 0;
}
