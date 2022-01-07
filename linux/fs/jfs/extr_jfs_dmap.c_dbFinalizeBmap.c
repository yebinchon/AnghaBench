
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct inode {int i_sb; } ;
struct bmap {int db_maxag; int db_numag; int db_mapsize; int db_agsize; int db_agl2size; int db_nfree; int* db_agfree; size_t db_agpref; int db_aglevel; int db_agheight; int db_agwidth; scalar_t__ db_agstart; } ;
typedef int s64 ;
struct TYPE_2__ {struct bmap* bmap; } ;


 int BMAPSZTOLEV (int) ;
 TYPE_1__* JFS_SBI (int ) ;
 int L2BPERDMAP ;
 int L2LPERCTL ;
 int jfs_error (int ,char*) ;

void dbFinalizeBmap(struct inode *ipbmap)
{
 struct bmap *bmp = JFS_SBI(ipbmap->i_sb)->bmap;
 int actags, inactags, l2nl;
 s64 ag_rem, actfree, inactfree, avgfree;
 int i, n;
 actags = bmp->db_maxag + 1;
 inactags = bmp->db_numag - actags;
 ag_rem = bmp->db_mapsize & (bmp->db_agsize - 1);






 inactfree = (inactags && ag_rem) ?
     ((inactags - 1) << bmp->db_agl2size) + ag_rem
     : inactags << bmp->db_agl2size;





 actfree = bmp->db_nfree - inactfree;
 avgfree = (u32) actfree / (u32) actags;





 if (bmp->db_agfree[bmp->db_agpref] < avgfree) {
  for (bmp->db_agpref = 0; bmp->db_agpref < actags;
       bmp->db_agpref++) {
   if (bmp->db_agfree[bmp->db_agpref] >= avgfree)
    break;
  }
  if (bmp->db_agpref >= bmp->db_numag) {
   jfs_error(ipbmap->i_sb,
      "cannot find ag with average freespace\n");
  }
 }
 bmp->db_aglevel = BMAPSZTOLEV(bmp->db_agsize);
 l2nl =
     bmp->db_agl2size - (L2BPERDMAP + bmp->db_aglevel * L2LPERCTL);
 bmp->db_agheight = l2nl >> 1;
 bmp->db_agwidth = 1 << (l2nl - (bmp->db_agheight << 1));
 for (i = 5 - bmp->db_agheight, bmp->db_agstart = 0, n = 1; i > 0;
      i--) {
  bmp->db_agstart += n;
  n <<= 2;
 }

}
