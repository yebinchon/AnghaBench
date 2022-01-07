
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnfs_block_volume {int type; } ;
struct pnfs_block_dev {int dummy; } ;
struct nfs_server {int dummy; } ;
typedef int gfp_t ;


 int EIO ;





 int bl_parse_concat (struct nfs_server*,struct pnfs_block_dev*,struct pnfs_block_volume*,int,int ) ;
 int bl_parse_scsi (struct nfs_server*,struct pnfs_block_dev*,struct pnfs_block_volume*,int,int ) ;
 int bl_parse_simple (struct nfs_server*,struct pnfs_block_dev*,struct pnfs_block_volume*,int,int ) ;
 int bl_parse_slice (struct nfs_server*,struct pnfs_block_dev*,struct pnfs_block_volume*,int,int ) ;
 int bl_parse_stripe (struct nfs_server*,struct pnfs_block_dev*,struct pnfs_block_volume*,int,int ) ;
 int dprintk (char*,int) ;

__attribute__((used)) static int
bl_parse_deviceid(struct nfs_server *server, struct pnfs_block_dev *d,
  struct pnfs_block_volume *volumes, int idx, gfp_t gfp_mask)
{
 switch (volumes[idx].type) {
 case 130:
  return bl_parse_simple(server, d, volumes, idx, gfp_mask);
 case 129:
  return bl_parse_slice(server, d, volumes, idx, gfp_mask);
 case 132:
  return bl_parse_concat(server, d, volumes, idx, gfp_mask);
 case 128:
  return bl_parse_stripe(server, d, volumes, idx, gfp_mask);
 case 131:
  return bl_parse_scsi(server, d, volumes, idx, gfp_mask);
 default:
  dprintk("unsupported volume type: %d\n", volumes[idx].type);
  return -EIO;
 }
}
