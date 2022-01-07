
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dquot {int dq_inuse; } ;


 int DQST_ALLOC_DQUOTS ;
 int dqstats_dec (int ) ;
 int list_del (int *) ;

__attribute__((used)) static inline void remove_inuse(struct dquot *dquot)
{
 dqstats_dec(DQST_ALLOC_DQUOTS);
 list_del(&dquot->dq_inuse);
}
