
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dquot {int dq_inuse; } ;


 int DQST_ALLOC_DQUOTS ;
 int dqstats_inc (int ) ;
 int inuse_list ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static inline void put_inuse(struct dquot *dquot)
{


 list_add_tail(&dquot->dq_inuse, &inuse_list);
 dqstats_inc(DQST_ALLOC_DQUOTS);
}
