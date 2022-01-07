
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ time64_t ;
struct TYPE_2__ {scalar_t__ dqb_rsvspace; scalar_t__ dqb_curspace; scalar_t__ dqb_bsoftlimit; scalar_t__ dqb_btime; } ;
struct dquot {int dq_flags; TYPE_1__ dq_dqb; } ;
typedef scalar_t__ qsize_t ;


 int DQ_BLKS_B ;
 int WARN_ON_ONCE (int) ;
 int clear_bit (int ,int *) ;

__attribute__((used)) static inline
void dquot_free_reserved_space(struct dquot *dquot, qsize_t number)
{
 if (dquot->dq_dqb.dqb_rsvspace >= number)
  dquot->dq_dqb.dqb_rsvspace -= number;
 else {
  WARN_ON_ONCE(1);
  dquot->dq_dqb.dqb_rsvspace = 0;
 }
 if (dquot->dq_dqb.dqb_curspace + dquot->dq_dqb.dqb_rsvspace <=
     dquot->dq_dqb.dqb_bsoftlimit)
  dquot->dq_dqb.dqb_btime = (time64_t) 0;
 clear_bit(DQ_BLKS_B, &dquot->dq_flags);
}
