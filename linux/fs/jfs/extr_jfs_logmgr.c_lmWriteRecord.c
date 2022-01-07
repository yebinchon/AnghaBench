
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct tlock {int flag; int type; int lock; int ip; TYPE_1__* mp; } ;
struct tblock {int clsn; int pn; int eor; int cqueue; struct lbuf* bp; int flag; } ;
struct lvd {int offset; int length; } ;
struct lv {int length; int offset; } ;
struct lrd {int length; int type; } ;
struct logpage {int dummy; } ;
struct linelock {int l2linesize; int index; int maxcnt; int next; struct lv* lv; } ;
struct lbuf {int l_eor; scalar_t__ l_ldata; } ;
struct jfs_log {int eor; int page; struct lbuf* bp; int cqueue; } ;
struct inlinelock {int pxd; } ;
typedef int * caddr_t ;
struct TYPE_6__ {int i_xtroot; int i_dtroot; } ;
struct TYPE_5__ {int commit; } ;
struct TYPE_4__ {scalar_t__ data; } ;


 int ASSERT (int) ;
 int INCREMENT (int ) ;
 TYPE_3__* JFS_IP (int ) ;
 int L2LOGPSIZE ;
 int LOGGC_LOCK (struct jfs_log*) ;
 int LOGGC_UNLOCK (struct jfs_log*) ;
 int LOGPHDRSIZE ;
 int LOGPSIZE ;
 int LOGPTLRSIZE ;
 int LOGRDSIZE ;
 int LOG_COMMIT ;
 int cpu_to_le16 (int) ;
 struct inlinelock* inlinelock ;
 int jfs_err (char*,struct tlock*) ;
 int jfs_info (char*,int,...) ;
 int le16_to_cpu (int) ;
 scalar_t__ lid_to_tlock (int) ;
 int list_add_tail (int *,int *) ;
 int lmNextPage (struct jfs_log*) ;
 TYPE_2__ lmStat ;
 int memcpy (int *,int *,int) ;
 int min (int,int) ;
 int tblkGC_QUEUE ;
 int tlckDTREE ;
 int tlckINLINELOCK ;
 int tlckINODELOCK ;
 int tlckPAGELOCK ;

__attribute__((used)) static int
lmWriteRecord(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
       struct tlock * tlck)
{
 int lsn = 0;
 struct lbuf *bp;
 struct logpage *lp;
 caddr_t dst;
 int dstoffset;
 int freespace;
 caddr_t p;
 caddr_t src;
 int srclen;
 int nbytes;
 int i;
 int len;
 struct linelock *linelock;
 struct lv *lv;
 struct lvd *lvd;
 int l2linesize;

 len = 0;


 bp = (struct lbuf *) log->bp;
 lp = (struct logpage *) bp->l_ldata;
 dstoffset = log->eor;


 if (tlck == ((void*)0))
  goto moveLrd;





 if (tlck->flag & tlckPAGELOCK) {
  p = (caddr_t) (tlck->mp->data);
  linelock = (struct linelock *) & tlck->lock;
 }

 else if (tlck->flag & tlckINODELOCK) {
  if (tlck->type & tlckDTREE)
   p = (caddr_t) &JFS_IP(tlck->ip)->i_dtroot;
  else
   p = (caddr_t) &JFS_IP(tlck->ip)->i_xtroot;
  linelock = (struct linelock *) & tlck->lock;
 }
 else {
  jfs_err("lmWriteRecord: UFO tlck:0x%p", tlck);
  return 0;
 }
 l2linesize = linelock->l2linesize;

      moveData:
 ASSERT(linelock->index <= linelock->maxcnt);

 lv = linelock->lv;
 for (i = 0; i < linelock->index; i++, lv++) {
  if (lv->length == 0)
   continue;


  if (dstoffset >= LOGPSIZE - LOGPTLRSIZE) {

   lmNextPage(log);

   bp = log->bp;
   lp = (struct logpage *) bp->l_ldata;
   dstoffset = LOGPHDRSIZE;
  }




  src = (u8 *) p + (lv->offset << l2linesize);
  srclen = lv->length << l2linesize;
  len += srclen;
  while (srclen > 0) {
   freespace = (LOGPSIZE - LOGPTLRSIZE) - dstoffset;
   nbytes = min(freespace, srclen);
   dst = (caddr_t) lp + dstoffset;
   memcpy(dst, src, nbytes);
   dstoffset += nbytes;


   if (dstoffset < LOGPSIZE - LOGPTLRSIZE)
    break;


   lmNextPage(log);

   bp = (struct lbuf *) log->bp;
   lp = (struct logpage *) bp->l_ldata;
   dstoffset = LOGPHDRSIZE;

   srclen -= nbytes;
   src += nbytes;
  }




  len += 4;
  lvd = (struct lvd *) ((caddr_t) lp + dstoffset);
  lvd->offset = cpu_to_le16(lv->offset);
  lvd->length = cpu_to_le16(lv->length);
  dstoffset += 4;
  jfs_info("lmWriteRecord: lv offset:%d length:%d",
    lv->offset, lv->length);
 }

 if ((i = linelock->next)) {
  linelock = (struct linelock *) lid_to_tlock(i);
  goto moveData;
 }




      moveLrd:
 lrd->length = cpu_to_le16(len);

 src = (caddr_t) lrd;
 srclen = LOGRDSIZE;

 while (srclen > 0) {
  freespace = (LOGPSIZE - LOGPTLRSIZE) - dstoffset;
  nbytes = min(freespace, srclen);
  dst = (caddr_t) lp + dstoffset;
  memcpy(dst, src, nbytes);

  dstoffset += nbytes;
  srclen -= nbytes;


  if (srclen)
   goto pageFull;






  log->eor = dstoffset;
  bp->l_eor = dstoffset;
  lsn = (log->page << L2LOGPSIZE) + dstoffset;

  if (lrd->type & cpu_to_le16(LOG_COMMIT)) {
   tblk->clsn = lsn;
   jfs_info("wr: tclsn:0x%x, beor:0x%x", tblk->clsn,
     bp->l_eor);

   INCREMENT(lmStat.commit);
   LOGGC_LOCK(log);


   tblk->flag = tblkGC_QUEUE;
   tblk->bp = log->bp;
   tblk->pn = log->page;
   tblk->eor = log->eor;


   list_add_tail(&tblk->cqueue, &log->cqueue);

   LOGGC_UNLOCK(log);
  }

  jfs_info("lmWriteRecord: lrd:0x%04x bp:0x%p pn:%d eor:0x%x",
   le16_to_cpu(lrd->type), log->bp, log->page, dstoffset);


  if (dstoffset < LOGPSIZE - LOGPTLRSIZE)
   return lsn;

       pageFull:

  lmNextPage(log);

  bp = (struct lbuf *) log->bp;
  lp = (struct logpage *) bp->l_ldata;
  dstoffset = LOGPHDRSIZE;
  src += nbytes;
 }

 return lsn;
}
