
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dquot {int dq_free; } ;


 int DQST_FREE_DQUOTS ;
 int dqstats_dec (int ) ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;

__attribute__((used)) static inline void remove_free_dquot(struct dquot *dquot)
{
 if (list_empty(&dquot->dq_free))
  return;
 list_del_init(&dquot->dq_free);
 dqstats_dec(DQST_FREE_DQUOTS);
}
