
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qtree_mem_dqinfo {int dummy; } ;
struct TYPE_2__ {int dqb_curinodes; int dqb_curspace; } ;
struct dquot {TYPE_1__ dq_dqb; int dq_flags; } ;


 int DQ_FAKE_B ;
 int qtree_delete_dquot (struct qtree_mem_dqinfo*,struct dquot*) ;
 scalar_t__ test_bit (int ,int *) ;

int qtree_release_dquot(struct qtree_mem_dqinfo *info, struct dquot *dquot)
{
 if (test_bit(DQ_FAKE_B, &dquot->dq_flags) &&
     !(dquot->dq_dqb.dqb_curinodes | dquot->dq_dqb.dqb_curspace))
  return qtree_delete_dquot(info, dquot);
 return 0;
}
