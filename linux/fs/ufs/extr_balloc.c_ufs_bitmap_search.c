
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ufs_sb_private_info {int s_fpg; int s_fpb; } ;
struct ufs_cg_private_info {int c_frotor; int c_cgx; int c_freeoff; } ;
struct super_block {int dummy; } ;
struct TYPE_2__ {struct ufs_sb_private_info* s_uspi; } ;


 int INVBLOCK ;
 int UCPI_UBH (struct ufs_cg_private_info*) ;
 int UFSD (char*,...) ;
 TYPE_1__* UFS_SB (struct super_block*) ;
 unsigned int ubh_blkmap (int ,int ,int) ;
 unsigned int ubh_scanc (struct ufs_sb_private_info*,int ,int ,unsigned int,int ,int) ;
 int ufs_dtogd (struct ufs_sb_private_info*,int) ;
 int ufs_error (struct super_block*,char*,char*,int ,...) ;
 int ufs_fragtable_8fpb ;
 int ufs_fragtable_other ;

__attribute__((used)) static u64 ufs_bitmap_search(struct super_block *sb,
        struct ufs_cg_private_info *ucpi,
        u64 goal, unsigned count)
{




 static const int mask_arr[9] = {
  0x3, 0x7, 0xf, 0x1f, 0x3f, 0x7f, 0xff, 0x1ff, 0x3ff
 };
 static const int want_arr[9] = {
  0x0, 0x2, 0x6, 0xe, 0x1e, 0x3e, 0x7e, 0xfe, 0x1fe
 };
 struct ufs_sb_private_info *uspi = UFS_SB(sb)->s_uspi;
 unsigned start, length, loc;
 unsigned pos, want, blockmap, mask, end;
 u64 result;

 UFSD("ENTER, cg %u, goal %llu, count %u\n", ucpi->c_cgx,
      (unsigned long long)goal, count);

 if (goal)
  start = ufs_dtogd(uspi, goal) >> 3;
 else
  start = ucpi->c_frotor >> 3;

 length = ((uspi->s_fpg + 7) >> 3) - start;
 loc = ubh_scanc(uspi, UCPI_UBH(ucpi), ucpi->c_freeoff + start, length,
  (uspi->s_fpb == 8) ? ufs_fragtable_8fpb : ufs_fragtable_other,
  1 << (count - 1 + (uspi->s_fpb & 7)));
 if (loc == 0) {
  length = start + 1;
  loc = ubh_scanc(uspi, UCPI_UBH(ucpi), ucpi->c_freeoff, length,
    (uspi->s_fpb == 8) ? ufs_fragtable_8fpb :
    ufs_fragtable_other,
    1 << (count - 1 + (uspi->s_fpb & 7)));
  if (loc == 0) {
   ufs_error(sb, "ufs_bitmap_search",
      "bitmap corrupted on cg %u, start %u,"
      " length %u, count %u, freeoff %u\n",
      ucpi->c_cgx, start, length, count,
      ucpi->c_freeoff);
   return INVBLOCK;
  }
  start = 0;
 }
 result = (start + length - loc) << 3;
 ucpi->c_frotor = result;





 for (end = result + 8; result < end; result += uspi->s_fpb) {
  blockmap = ubh_blkmap(UCPI_UBH(ucpi), ucpi->c_freeoff, result);
  blockmap <<= 1;
  mask = mask_arr[count];
  want = want_arr[count];
  for (pos = 0; pos <= uspi->s_fpb - count; pos++) {
   if ((blockmap & mask) == want) {
    UFSD("EXIT, result %llu\n",
         (unsigned long long)result);
    return result + pos;
    }
   mask <<= 1;
   want <<= 1;
   }
  }

 ufs_error(sb, "ufs_bitmap_search", "block not in map on cg %u\n",
    ucpi->c_cgx);
 UFSD("EXIT (FAILED)\n");
 return INVBLOCK;
}
