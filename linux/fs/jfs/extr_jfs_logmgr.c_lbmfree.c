
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbuf {struct lbuf* l_freelist; int * l_wqnext; struct jfs_log* l_log; } ;
struct jfs_log {int free_wait; struct lbuf* lbuf_free; } ;


 int assert (int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void lbmfree(struct lbuf * bp)
{
 struct jfs_log *log = bp->l_log;

 assert(bp->l_wqnext == ((void*)0));




 bp->l_freelist = log->lbuf_free;
 log->lbuf_free = bp;

 wake_up(&log->free_wait);
 return;
}
