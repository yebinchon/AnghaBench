
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbuf {int l_pn; int l_flag; scalar_t__ l_blkno; } ;
struct jfs_log {int l2bsize; scalar_t__ base; } ;


 int L2LOGPSIZE ;
 int jfs_info (char*,struct lbuf*,int,int) ;
 int lbmDIRECT ;
 int lbmStartIO (struct lbuf*) ;

__attribute__((used)) static void lbmDirectWrite(struct jfs_log * log, struct lbuf * bp, int flag)
{
 jfs_info("lbmDirectWrite: bp:0x%p flag:0x%x pn:0x%x",
   bp, flag, bp->l_pn);




 bp->l_flag = flag | lbmDIRECT;


 bp->l_blkno =
     log->base + (bp->l_pn << (L2LOGPSIZE - log->l2bsize));




 lbmStartIO(bp);
}
