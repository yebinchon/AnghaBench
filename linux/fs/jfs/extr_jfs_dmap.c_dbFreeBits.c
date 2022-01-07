
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dmap {int nfree; int * wmap; int tree; } ;
struct bmap {int db_agl2size; int db_nfree; int* db_agfree; int db_agsize; int db_maxag; int db_numag; int db_mapsize; size_t db_agpref; } ;
typedef int s64 ;
typedef int dmtree_t ;


 int BMAP_LOCK (struct bmap*) ;
 int BMAP_UNLOCK (struct bmap*) ;
 int BPERDMAP ;
 int BUDMIN ;
 int BUDSIZE (int,int ) ;
 int DBWORD ;
 int L2DBWORD ;
 int L2LPERDMAP ;
 int LITOL2BSZ (int,int ,int ) ;
 int NLSTOL2BSZ (int) ;
 int ONES ;
 int assert (int) ;
 int cpu_to_le32 (int) ;
 int dbJoin (int *,int,int) ;
 int dbMaxBud (int *) ;
 int le32_add_cpu (int *,int) ;
 int memset (int *,int ,int) ;
 int min (int,int) ;

__attribute__((used)) static int dbFreeBits(struct bmap * bmp, struct dmap * dp, s64 blkno,
         int nblocks)
{
 int dbitno, word, rembits, nb, nwords, wbitno, nw, agno;
 dmtree_t *tp = (dmtree_t *) & dp->tree;
 int rc = 0;
 int size;




 dbitno = blkno & (BPERDMAP - 1);
 word = dbitno >> L2DBWORD;



 assert(dbitno + nblocks <= BPERDMAP);
 for (rembits = nblocks; rembits > 0; rembits -= nb, dbitno += nb) {



  wbitno = dbitno & (DBWORD - 1);
  nb = min(rembits, DBWORD - wbitno);



  if (nb < DBWORD) {



   dp->wmap[word] &=
       cpu_to_le32(~(ONES << (DBWORD - nb)
       >> wbitno));



   rc = dbJoin(tp, word,
        dbMaxBud((u8 *) & dp->wmap[word]));
   if (rc)
    return rc;

   word += 1;
  } else {




   nwords = rembits >> L2DBWORD;
   memset(&dp->wmap[word], 0, nwords * 4);



   nb = nwords << L2DBWORD;




   for (; nwords > 0; nwords -= nw) {





    size =
        min(LITOL2BSZ
     (word, L2LPERDMAP, BUDMIN),
     NLSTOL2BSZ(nwords));



    rc = dbJoin(tp, word, size);
    if (rc)
     return rc;



    nw = BUDSIZE(size, BUDMIN);
    word += nw;
   }
  }
 }



 le32_add_cpu(&dp->nfree, nblocks);

 BMAP_LOCK(bmp);




 agno = blkno >> bmp->db_agl2size;
 bmp->db_nfree += nblocks;
 bmp->db_agfree[agno] += nblocks;






 if ((bmp->db_agfree[agno] == bmp->db_agsize && agno == bmp->db_maxag) ||
     (agno == bmp->db_numag - 1 &&
      bmp->db_agfree[agno] == (bmp-> db_mapsize & (BPERDMAP - 1)))) {
  while (bmp->db_maxag > 0) {
   bmp->db_maxag -= 1;
   if (bmp->db_agfree[bmp->db_maxag] !=
       bmp->db_agsize)
    break;
  }





  if (bmp->db_agpref > bmp->db_maxag)
   bmp->db_agpref = bmp->db_maxag;
 }

 BMAP_UNLOCK(bmp);

 return 0;
}
