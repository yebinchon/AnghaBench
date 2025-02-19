
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct quad_buffer_head {int dummy; } ;
typedef int dnode_secno ;
typedef int __le32 ;
struct TYPE_2__ {int sb_dirband_start; int sb_dirband_size; scalar_t__ sb_chk; } ;


 int cpu_to_le32 (int) ;
 int hpfs_brelse4 (struct quad_buffer_head*) ;
 int hpfs_claim_dirband_free (struct super_block*,int) ;
 int hpfs_error (struct super_block*,char*,int) ;
 int hpfs_free_sectors (struct super_block*,int,int) ;
 int * hpfs_map_dnode_bitmap (struct super_block*,struct quad_buffer_head*) ;
 int hpfs_mark_4buffers_dirty (struct quad_buffer_head*) ;
 TYPE_1__* hpfs_sb (struct super_block*) ;

void hpfs_free_dnode(struct super_block *s, dnode_secno dno)
{
 if (hpfs_sb(s)->sb_chk) if (dno & 3) {
  hpfs_error(s, "hpfs_free_dnode: dnode %08x not aligned", dno);
  return;
 }
 if (dno < hpfs_sb(s)->sb_dirband_start ||
     dno >= hpfs_sb(s)->sb_dirband_start + hpfs_sb(s)->sb_dirband_size) {
  hpfs_free_sectors(s, dno, 4);
 } else {
  struct quad_buffer_head qbh;
  __le32 *bmp;
  unsigned ssec = (dno - hpfs_sb(s)->sb_dirband_start) / 4;
  if (!(bmp = hpfs_map_dnode_bitmap(s, &qbh))) {
   return;
  }
  bmp[ssec >> 5] |= cpu_to_le32(1 << (ssec & 0x1f));
  hpfs_mark_4buffers_dirty(&qbh);
  hpfs_brelse4(&qbh);
  hpfs_claim_dirband_free(s, dno);
 }
}
