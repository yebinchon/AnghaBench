
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pnfs_block_layout {int dummy; } ;
struct pnfs_block_extent {size_t be_length; size_t be_f_offset; int be_device; } ;
struct TYPE_2__ {size_t count; size_t offset; } ;
struct nfs_pgio_header {TYPE_1__ args; int lseg; } ;
typedef size_t sector_t ;


 struct pnfs_block_layout* BLK_LSEG2EXT (int ) ;
 size_t SECTOR_SHIFT ;
 int ext_tree_lookup (struct pnfs_block_layout*,size_t,struct pnfs_block_extent*,int) ;
 int nfs4_mark_deviceid_unavailable (int ) ;

__attribute__((used)) static void bl_mark_devices_unavailable(struct nfs_pgio_header *header, bool rw)
{
 struct pnfs_block_layout *bl = BLK_LSEG2EXT(header->lseg);
 size_t bytes_left = header->args.count;
 sector_t isect, extent_length = 0;
 struct pnfs_block_extent be;

 isect = header->args.offset >> SECTOR_SHIFT;
 bytes_left += header->args.offset - (isect << SECTOR_SHIFT);

 while (bytes_left > 0) {
  if (!ext_tree_lookup(bl, isect, &be, rw))
    return;
  extent_length = be.be_length - (isect - be.be_f_offset);
  nfs4_mark_deviceid_unavailable(be.be_device);
  isect += extent_length;
  if (bytes_left > extent_length << SECTOR_SHIFT)
   bytes_left -= extent_length << SECTOR_SHIFT;
  else
   bytes_left = 0;
 }
}
