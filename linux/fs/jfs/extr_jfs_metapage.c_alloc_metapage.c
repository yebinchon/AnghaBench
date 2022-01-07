
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct metapage {int wait; int * log; scalar_t__ clsn; int * data; scalar_t__ lsn; scalar_t__ lid; } ;
typedef int gfp_t ;


 int init_waitqueue_head (int *) ;
 struct metapage* mempool_alloc (int ,int ) ;
 int metapage_mempool ;

__attribute__((used)) static inline struct metapage *alloc_metapage(gfp_t gfp_mask)
{
 struct metapage *mp = mempool_alloc(metapage_mempool, gfp_mask);

 if (mp) {
  mp->lid = 0;
  mp->lsn = 0;
  mp->data = ((void*)0);
  mp->clsn = 0;
  mp->log = ((void*)0);
  init_waitqueue_head(&mp->wait);
 }
 return mp;
}
