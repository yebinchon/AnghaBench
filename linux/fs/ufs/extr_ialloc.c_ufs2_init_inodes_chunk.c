
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ufs_sb_private_info {scalar_t__ s_sbbase; int s_ipg; scalar_t__ s_fpb; int s_inopb; } ;
struct TYPE_4__ {int cg_initediblk; } ;
struct TYPE_5__ {TYPE_1__ cg_u2; } ;
struct ufs_cylinder_group {TYPE_2__ cg_u; } ;
struct ufs_cg_private_info {int c_cgx; } ;
struct super_block {int s_flags; int s_blocksize; } ;
struct buffer_head {int b_data; } ;
typedef scalar_t__ sector_t ;
struct TYPE_6__ {struct ufs_sb_private_info* s_uspi; } ;


 int SB_SYNCHRONOUS ;
 int UCPI_UBH (struct ufs_cg_private_info*) ;
 int UFSD (char*,...) ;
 TYPE_3__* UFS_SB (struct super_block*) ;
 int brelse (struct buffer_head*) ;
 int fs32_add (struct super_block*,int *,int ) ;
 scalar_t__ fs32_to_cpu (struct super_block*,int ) ;
 int lock_buffer (struct buffer_head*) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 int memset (int ,int ,int ) ;
 struct buffer_head* sb_getblk (struct super_block*,scalar_t__) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int sync_dirty_buffer (struct buffer_head*) ;
 int ubh_mark_buffer_dirty (int ) ;
 int ubh_sync_block (int ) ;
 scalar_t__ ufs_inotofsba (scalar_t__) ;
 int unlock_buffer (struct buffer_head*) ;

__attribute__((used)) static void ufs2_init_inodes_chunk(struct super_block *sb,
       struct ufs_cg_private_info *ucpi,
       struct ufs_cylinder_group *ucg)
{
 struct buffer_head *bh;
 struct ufs_sb_private_info *uspi = UFS_SB(sb)->s_uspi;
 sector_t beg = uspi->s_sbbase +
  ufs_inotofsba(ucpi->c_cgx * uspi->s_ipg +
         fs32_to_cpu(sb, ucg->cg_u.cg_u2.cg_initediblk));
 sector_t end = beg + uspi->s_fpb;

 UFSD("ENTER cgno %d\n", ucpi->c_cgx);

 for (; beg < end; ++beg) {
  bh = sb_getblk(sb, beg);
  lock_buffer(bh);
  memset(bh->b_data, 0, sb->s_blocksize);
  set_buffer_uptodate(bh);
  mark_buffer_dirty(bh);
  unlock_buffer(bh);
  if (sb->s_flags & SB_SYNCHRONOUS)
   sync_dirty_buffer(bh);
  brelse(bh);
 }

 fs32_add(sb, &ucg->cg_u.cg_u2.cg_initediblk, uspi->s_inopb);
 ubh_mark_buffer_dirty(UCPI_UBH(ucpi));
 if (sb->s_flags & SB_SYNCHRONOUS)
  ubh_sync_block(UCPI_UBH(ucpi));

 UFSD("EXIT\n");
}
