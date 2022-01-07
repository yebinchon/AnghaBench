
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct quad_buffer_head {int dummy; } ;
typedef int secno ;
typedef int __le32 ;
struct TYPE_2__ {int sb_dirband_start; int sb_dirband_size; } ;


 int hpfs_brelse4 (struct quad_buffer_head*) ;
 int hpfs_error (struct super_block*,char*,char*,int) ;
 int * hpfs_map_bitmap (struct super_block*,int,struct quad_buffer_head*,char*) ;
 int * hpfs_map_dnode_bitmap (struct super_block*,struct quad_buffer_head*) ;
 TYPE_1__* hpfs_sb (struct super_block*) ;
 unsigned int le32_to_cpu (int ) ;

__attribute__((used)) static int chk_if_allocated(struct super_block *s, secno sec, char *msg)
{
 struct quad_buffer_head qbh;
 __le32 *bmp;
 if (!(bmp = hpfs_map_bitmap(s, sec >> 14, &qbh, "chk"))) goto fail;
 if ((le32_to_cpu(bmp[(sec & 0x3fff) >> 5]) >> (sec & 0x1f)) & 1) {
  hpfs_error(s, "sector '%s' - %08x not allocated in bitmap", msg, sec);
  goto fail1;
 }
 hpfs_brelse4(&qbh);
 if (sec >= hpfs_sb(s)->sb_dirband_start && sec < hpfs_sb(s)->sb_dirband_start + hpfs_sb(s)->sb_dirband_size) {
  unsigned ssec = (sec - hpfs_sb(s)->sb_dirband_start) / 4;
  if (!(bmp = hpfs_map_dnode_bitmap(s, &qbh))) goto fail;
  if ((le32_to_cpu(bmp[ssec >> 5]) >> (ssec & 0x1f)) & 1) {
   hpfs_error(s, "sector '%s' - %08x not allocated in directory bitmap", msg, sec);
   goto fail1;
  }
  hpfs_brelse4(&qbh);
 }
 return 0;
 fail1:
 hpfs_brelse4(&qbh);
 fail:
 return 1;
}
