
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ time64_t ;
struct TYPE_3__ {scalar_t__ dqb_curspace; scalar_t__ dqb_rsvspace; scalar_t__ dqb_bsoftlimit; scalar_t__ dqb_btime; } ;
struct dquot {int dq_flags; TYPE_1__ dq_dqb; int dq_sb; } ;
typedef scalar_t__ qsize_t ;
struct TYPE_4__ {int flags; } ;


 int DQUOT_NEGATIVE_USAGE ;
 int DQ_BLKS_B ;
 int clear_bit (int ,int *) ;
 TYPE_2__* sb_dqopt (int ) ;

__attribute__((used)) static void dquot_decr_space(struct dquot *dquot, qsize_t number)
{
 if (sb_dqopt(dquot->dq_sb)->flags & DQUOT_NEGATIVE_USAGE ||
     dquot->dq_dqb.dqb_curspace >= number)
  dquot->dq_dqb.dqb_curspace -= number;
 else
  dquot->dq_dqb.dqb_curspace = 0;
 if (dquot->dq_dqb.dqb_curspace + dquot->dq_dqb.dqb_rsvspace <=
     dquot->dq_dqb.dqb_bsoftlimit)
  dquot->dq_dqb.dqb_btime = (time64_t) 0;
 clear_bit(DQ_BLKS_B, &dquot->dq_flags);
}
