
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbuf {int l_flag; int l_ioevent; } ;


 int EIO ;
 int LCACHE_LOCK (unsigned long) ;
 int LCACHE_SLEEP_COND (int ,int,unsigned long) ;
 int LCACHE_UNLOCK (unsigned long) ;
 int jfs_info (char*,struct lbuf*,int,int) ;
 int lbmDONE ;
 int lbmERROR ;
 int lbmFREE ;
 int lbmfree (struct lbuf*) ;

__attribute__((used)) static int lbmIOWait(struct lbuf * bp, int flag)
{
 unsigned long flags;
 int rc = 0;

 jfs_info("lbmIOWait1: bp:0x%p flag:0x%x:0x%x", bp, bp->l_flag, flag);

 LCACHE_LOCK(flags);

 LCACHE_SLEEP_COND(bp->l_ioevent, (bp->l_flag & lbmDONE), flags);

 rc = (bp->l_flag & lbmERROR) ? -EIO : 0;

 if (flag & lbmFREE)
  lbmfree(bp);

 LCACHE_UNLOCK(flags);

 jfs_info("lbmIOWait2: bp:0x%p flag:0x%x:0x%x", bp, bp->l_flag, flag);
 return rc;
}
