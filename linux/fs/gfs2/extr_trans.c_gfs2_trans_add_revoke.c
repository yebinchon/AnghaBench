
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfs2_trans {int tr_num_revoke; int tr_flags; } ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_bufdata {int bd_list; } ;
struct TYPE_2__ {struct gfs2_trans* journal_info; } ;


 int BUG_ON (int) ;
 int TR_TOUCHED ;
 TYPE_1__* current ;
 int gfs2_add_revoke (struct gfs2_sbd*,struct gfs2_bufdata*) ;
 int list_empty (int *) ;
 int set_bit (int ,int *) ;

void gfs2_trans_add_revoke(struct gfs2_sbd *sdp, struct gfs2_bufdata *bd)
{
 struct gfs2_trans *tr = current->journal_info;

 BUG_ON(!list_empty(&bd->bd_list));
 gfs2_add_revoke(sdp, bd);
 set_bit(TR_TOUCHED, &tr->tr_flags);
 tr->tr_num_revoke++;
}
