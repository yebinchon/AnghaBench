
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbuf {int dummy; } ;


 int LCACHE_LOCK (unsigned long) ;
 int LCACHE_UNLOCK (unsigned long) ;
 int lbmfree (struct lbuf*) ;

__attribute__((used)) static void lbmFree(struct lbuf * bp)
{
 unsigned long flags;

 LCACHE_LOCK(flags);

 lbmfree(bp);

 LCACHE_UNLOCK(flags);
}
