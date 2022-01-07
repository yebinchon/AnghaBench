
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ time64_t ;
struct TYPE_3__ {scalar_t__ dqb_curinodes; scalar_t__ dqb_isoftlimit; scalar_t__ dqb_itime; } ;
struct dquot {int dq_flags; TYPE_1__ dq_dqb; int dq_sb; } ;
typedef scalar_t__ qsize_t ;
struct TYPE_4__ {int flags; } ;


 int DQUOT_NEGATIVE_USAGE ;
 int DQ_INODES_B ;
 int clear_bit (int ,int *) ;
 TYPE_2__* sb_dqopt (int ) ;

__attribute__((used)) static void dquot_decr_inodes(struct dquot *dquot, qsize_t number)
{
 if (sb_dqopt(dquot->dq_sb)->flags & DQUOT_NEGATIVE_USAGE ||
     dquot->dq_dqb.dqb_curinodes >= number)
  dquot->dq_dqb.dqb_curinodes -= number;
 else
  dquot->dq_dqb.dqb_curinodes = 0;
 if (dquot->dq_dqb.dqb_curinodes <= dquot->dq_dqb.dqb_isoftlimit)
  dquot->dq_dqb.dqb_itime = (time64_t) 0;
 clear_bit(DQ_INODES_B, &dquot->dq_flags);
}
