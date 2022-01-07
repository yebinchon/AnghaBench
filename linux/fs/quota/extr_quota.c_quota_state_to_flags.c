
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qc_state {TYPE_1__* s_state; } ;
struct TYPE_2__ {int flags; } ;


 int FS_QUOTA_GDQ_ACCT ;
 int FS_QUOTA_GDQ_ENFD ;
 int FS_QUOTA_PDQ_ACCT ;
 int FS_QUOTA_PDQ_ENFD ;
 int FS_QUOTA_UDQ_ACCT ;
 int FS_QUOTA_UDQ_ENFD ;
 size_t GRPQUOTA ;
 size_t PRJQUOTA ;
 int QCI_ACCT_ENABLED ;
 int QCI_LIMITS_ENFORCED ;
 size_t USRQUOTA ;

__attribute__((used)) static int quota_state_to_flags(struct qc_state *state)
{
 int flags = 0;

 if (state->s_state[USRQUOTA].flags & QCI_ACCT_ENABLED)
  flags |= FS_QUOTA_UDQ_ACCT;
 if (state->s_state[USRQUOTA].flags & QCI_LIMITS_ENFORCED)
  flags |= FS_QUOTA_UDQ_ENFD;
 if (state->s_state[GRPQUOTA].flags & QCI_ACCT_ENABLED)
  flags |= FS_QUOTA_GDQ_ACCT;
 if (state->s_state[GRPQUOTA].flags & QCI_LIMITS_ENFORCED)
  flags |= FS_QUOTA_GDQ_ENFD;
 if (state->s_state[PRJQUOTA].flags & QCI_ACCT_ENABLED)
  flags |= FS_QUOTA_PDQ_ACCT;
 if (state->s_state[PRJQUOTA].flags & QCI_LIMITS_ENFORCED)
  flags |= FS_QUOTA_PDQ_ENFD;
 return flags;
}
