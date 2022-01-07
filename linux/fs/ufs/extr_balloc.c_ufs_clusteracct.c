
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ufs_sb_private_info {int s_contigsumsize; } ;
struct ufs_cg_private_info {int c_nclusterblks; scalar_t__ c_clustersumoff; int c_clusteroff; } ;
struct super_block {int dummy; } ;
typedef int __fs32 ;
struct TYPE_2__ {struct ufs_sb_private_info* s_uspi; } ;


 int UCPI_UBH (struct ufs_cg_private_info*) ;
 TYPE_1__* UFS_SB (struct super_block*) ;
 int fs32_add (struct super_block*,int *,int) ;
 int fs32_sub (struct super_block*,int *,int) ;
 int ubh_clrbit (int ,int ,unsigned int) ;
 int ubh_find_last_zero_bit (int ,int ,int,int) ;
 int ubh_find_next_zero_bit (int ,int ,int,int) ;
 scalar_t__ ubh_get_addr (int ,scalar_t__) ;
 int ubh_setbit (int ,int ,unsigned int) ;

__attribute__((used)) static void ufs_clusteracct(struct super_block * sb,
 struct ufs_cg_private_info * ucpi, unsigned blkno, int cnt)
{
 struct ufs_sb_private_info * uspi;
 int i, start, end, forw, back;

 uspi = UFS_SB(sb)->s_uspi;
 if (uspi->s_contigsumsize <= 0)
  return;

 if (cnt > 0)
  ubh_setbit(UCPI_UBH(ucpi), ucpi->c_clusteroff, blkno);
 else
  ubh_clrbit(UCPI_UBH(ucpi), ucpi->c_clusteroff, blkno);




 start = blkno + 1;
 end = start + uspi->s_contigsumsize;
 if ( end >= ucpi->c_nclusterblks)
  end = ucpi->c_nclusterblks;
 i = ubh_find_next_zero_bit (UCPI_UBH(ucpi), ucpi->c_clusteroff, end, start);
 if (i > end)
  i = end;
 forw = i - start;




 start = blkno - 1;
 end = start - uspi->s_contigsumsize;
 if (end < 0 )
  end = -1;
 i = ubh_find_last_zero_bit (UCPI_UBH(ucpi), ucpi->c_clusteroff, start, end);
 if ( i < end)
  i = end;
 back = start - i;





 i = back + forw + 1;
 if (i > uspi->s_contigsumsize)
  i = uspi->s_contigsumsize;
 fs32_add(sb, (__fs32*)ubh_get_addr(UCPI_UBH(ucpi), ucpi->c_clustersumoff + (i << 2)), cnt);
 if (back > 0)
  fs32_sub(sb, (__fs32*)ubh_get_addr(UCPI_UBH(ucpi), ucpi->c_clustersumoff + (back << 2)), cnt);
 if (forw > 0)
  fs32_sub(sb, (__fs32*)ubh_get_addr(UCPI_UBH(ucpi), ucpi->c_clustersumoff + (forw << 2)), cnt);
}
