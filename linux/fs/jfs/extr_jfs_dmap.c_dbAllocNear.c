
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ leafidx; int* stree; } ;
struct dmap {scalar_t__* wmap; int start; TYPE_2__ tree; } ;
struct bmap {TYPE_1__* db_ipbmap; } ;
typedef int s8 ;
typedef int s64 ;
struct TYPE_3__ {int i_sb; } ;


 int BPERDMAP ;
 int BUDMIN ;
 int EIO ;
 int ENOSPC ;
 int L2DBWORD ;
 int LEAFIND ;
 int LPERDMAP ;
 scalar_t__ cpu_to_le32 (int ) ;
 int dbAllocDmap (struct bmap*,struct dmap*,int,int) ;
 scalar_t__ dbFindBits (int ,int) ;
 int jfs_error (int ,char*) ;
 int le32_to_cpu (scalar_t__) ;
 int le64_to_cpu (int ) ;
 int min (int,int ) ;

__attribute__((used)) static int
dbAllocNear(struct bmap * bmp,
     struct dmap * dp, s64 blkno, int nblocks, int l2nb, s64 * results)
{
 int word, lword, rc;
 s8 *leaf;

 if (dp->tree.leafidx != cpu_to_le32(LEAFIND)) {
  jfs_error(bmp->db_ipbmap->i_sb, "Corrupt dmap page\n");
  return -EIO;
 }

 leaf = dp->tree.stree + le32_to_cpu(dp->tree.leafidx);





 word = (blkno & (BPERDMAP - 1)) >> L2DBWORD;
 lword = min(word + 4, LPERDMAP);



 for (; word < lword; word++) {


  if (leaf[word] < l2nb)
   continue;




  blkno = le64_to_cpu(dp->start) + (word << L2DBWORD);






  if (leaf[word] < BUDMIN)
   blkno +=
       dbFindBits(le32_to_cpu(dp->wmap[word]), l2nb);



  if ((rc = dbAllocDmap(bmp, dp, blkno, nblocks)) == 0)
   *results = blkno;

  return (rc);
 }

 return -ENOSPC;
}
