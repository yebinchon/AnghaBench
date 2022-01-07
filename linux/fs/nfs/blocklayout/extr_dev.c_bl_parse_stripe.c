
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {int volumes_count; int chunk_size; int * volumes; } ;
struct pnfs_block_volume {TYPE_1__ stripe; } ;
struct pnfs_block_dev {int map; int chunk_size; int len; TYPE_2__* children; int nr_children; } ;
struct nfs_server {int dummy; } ;
typedef int gfp_t ;
struct TYPE_5__ {scalar_t__ len; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int bl_map_stripe ;
 int bl_parse_deviceid (struct nfs_server*,TYPE_2__*,struct pnfs_block_volume*,int ,int ) ;
 TYPE_2__* kcalloc (int,int,int ) ;

__attribute__((used)) static int
bl_parse_stripe(struct nfs_server *server, struct pnfs_block_dev *d,
  struct pnfs_block_volume *volumes, int idx, gfp_t gfp_mask)
{
 struct pnfs_block_volume *v = &volumes[idx];
 u64 len = 0;
 int ret, i;

 d->children = kcalloc(v->stripe.volumes_count,
   sizeof(struct pnfs_block_dev), GFP_KERNEL);
 if (!d->children)
  return -ENOMEM;

 for (i = 0; i < v->stripe.volumes_count; i++) {
  ret = bl_parse_deviceid(server, &d->children[i],
    volumes, v->stripe.volumes[i], gfp_mask);
  if (ret)
   return ret;

  d->nr_children++;
  len += d->children[i].len;
 }

 d->len = len;
 d->chunk_size = v->stripe.chunk_size;
 d->map = bl_map_stripe;
 return 0;
}
