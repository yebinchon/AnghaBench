
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct super_block {struct gfs2_sbd* s_fs_info; } ;
struct qc_state {int s_incoredqs; TYPE_2__* s_state; } ;
struct TYPE_5__ {int ar_quota; } ;
struct gfs2_sbd {TYPE_4__* sd_quota_inode; TYPE_1__ sd_args; } ;
struct TYPE_8__ {int i_blocks; } ;
struct TYPE_7__ {int i_no_addr; } ;
struct TYPE_6__ {int flags; int nextents; int blocks; int ino; } ;


 TYPE_3__* GFS2_I (TYPE_4__*) ;



 size_t GRPQUOTA ;
 int QCI_ACCT_ENABLED ;
 int QCI_LIMITS_ENFORCED ;
 int QCI_SYSFILE ;
 size_t USRQUOTA ;
 int gfs2_qd_lru ;
 int list_lru_count (int *) ;
 int memset (struct qc_state*,int ,int) ;

__attribute__((used)) static int gfs2_quota_get_state(struct super_block *sb, struct qc_state *state)
{
 struct gfs2_sbd *sdp = sb->s_fs_info;

 memset(state, 0, sizeof(*state));

 switch (sdp->sd_args.ar_quota) {
 case 128:
  state->s_state[USRQUOTA].flags |= QCI_LIMITS_ENFORCED;
  state->s_state[GRPQUOTA].flags |= QCI_LIMITS_ENFORCED;

 case 130:
  state->s_state[USRQUOTA].flags |= QCI_ACCT_ENABLED |
        QCI_SYSFILE;
  state->s_state[GRPQUOTA].flags |= QCI_ACCT_ENABLED |
        QCI_SYSFILE;
  break;
 case 129:
  break;
 }
 if (sdp->sd_quota_inode) {
  state->s_state[USRQUOTA].ino =
     GFS2_I(sdp->sd_quota_inode)->i_no_addr;
  state->s_state[USRQUOTA].blocks = sdp->sd_quota_inode->i_blocks;
 }
 state->s_state[USRQUOTA].nextents = 1;
 state->s_state[GRPQUOTA] = state->s_state[USRQUOTA];
 state->s_incoredqs = list_lru_count(&gfs2_qd_lru);
 return 0;
}
