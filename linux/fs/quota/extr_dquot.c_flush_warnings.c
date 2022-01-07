
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dquot_warn {scalar_t__ w_type; TYPE_1__* w_sb; int w_dq_id; } ;
struct TYPE_2__ {int s_dev; } ;


 int MAXQUOTAS ;
 scalar_t__ QUOTA_NL_NOWARN ;
 int print_warning (struct dquot_warn*) ;
 int quota_send_warning (int ,int ,scalar_t__) ;

__attribute__((used)) static void flush_warnings(struct dquot_warn *warn)
{
 int i;

 for (i = 0; i < MAXQUOTAS; i++) {
  if (warn[i].w_type == QUOTA_NL_NOWARN)
   continue;



  quota_send_warning(warn[i].w_dq_id,
       warn[i].w_sb->s_dev, warn[i].w_type);
 }
}
