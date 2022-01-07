
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dquot {int dq_free; } ;


 int DQST_FREE_DQUOTS ;
 int dqstats_inc (int ) ;
 int free_dquots ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static inline void put_dquot_last(struct dquot *dquot)
{
 list_add_tail(&dquot->dq_free, &free_dquots);
 dqstats_inc(DQST_FREE_DQUOTS);
}
