
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_cacherep {int c_lru; int c_timestamp; } ;
struct nfsd_drc_bucket {int lru_head; } ;


 int jiffies ;
 int list_move_tail (int *,int *) ;

__attribute__((used)) static void
lru_put_end(struct nfsd_drc_bucket *b, struct svc_cacherep *rp)
{
 rp->c_timestamp = jiffies;
 list_move_tail(&rp->c_lru, &b->lru_head);
}
