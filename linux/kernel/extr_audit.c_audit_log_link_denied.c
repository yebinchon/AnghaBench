
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_buffer {int dummy; } ;


 int AUDIT_ANOM_LINK ;
 int GFP_KERNEL ;
 int audit_context () ;
 scalar_t__ audit_dummy_context () ;
 int audit_enabled ;
 int audit_log_end (struct audit_buffer*) ;
 int audit_log_format (struct audit_buffer*,char*,...) ;
 struct audit_buffer* audit_log_start (int ,int ,int ) ;
 int audit_log_task_info (struct audit_buffer*) ;

void audit_log_link_denied(const char *operation)
{
 struct audit_buffer *ab;

 if (!audit_enabled || audit_dummy_context())
  return;


 ab = audit_log_start(audit_context(), GFP_KERNEL, AUDIT_ANOM_LINK);
 if (!ab)
  return;
 audit_log_format(ab, "op=%s", operation);
 audit_log_task_info(ab);
 audit_log_format(ab, " res=0");
 audit_log_end(ab);
}
