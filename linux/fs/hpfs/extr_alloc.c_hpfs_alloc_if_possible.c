
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct quad_buffer_head {int dummy; } ;
typedef int secno ;
typedef int __le32 ;


 int cpu_to_le32 (int) ;
 int hpfs_brelse4 (struct quad_buffer_head*) ;
 int hpfs_claim_alloc (struct super_block*,int) ;
 int * hpfs_map_bitmap (struct super_block*,int,struct quad_buffer_head*,char*) ;
 int hpfs_mark_4buffers_dirty (struct quad_buffer_head*) ;
 int le32_to_cpu (int ) ;

int hpfs_alloc_if_possible(struct super_block *s, secno sec)
{
 struct quad_buffer_head qbh;
 __le32 *bmp;
 if (!(bmp = hpfs_map_bitmap(s, sec >> 14, &qbh, "aip"))) goto end;
 if (le32_to_cpu(bmp[(sec & 0x3fff) >> 5]) & (1 << (sec & 0x1f))) {
  bmp[(sec & 0x3fff) >> 5] &= cpu_to_le32(~(1 << (sec & 0x1f)));
  hpfs_mark_4buffers_dirty(&qbh);
  hpfs_brelse4(&qbh);
  hpfs_claim_alloc(s, sec);
  return 1;
 }
 hpfs_brelse4(&qbh);
 end:
 return 0;
}
