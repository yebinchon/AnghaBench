
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct audit_buffer {int dummy; } ;


 int AUDIT_CONFIG_CHANGE ;
 int GFP_KERNEL ;
 int audit_context () ;
 int audit_log_end (struct audit_buffer*) ;
 int audit_log_format (struct audit_buffer*,char*,...) ;
 int audit_log_session_info (struct audit_buffer*) ;
 struct audit_buffer* audit_log_start (int ,int ,int ) ;
 int audit_log_task_context (struct audit_buffer*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int audit_log_config_change(char *function_name, u32 new, u32 old,
       int allow_changes)
{
 struct audit_buffer *ab;
 int rc = 0;

 ab = audit_log_start(audit_context(), GFP_KERNEL, AUDIT_CONFIG_CHANGE);
 if (unlikely(!ab))
  return rc;
 audit_log_format(ab, "op=set %s=%u old=%u ", function_name, new, old);
 audit_log_session_info(ab);
 rc = audit_log_task_context(ab);
 if (rc)
  allow_changes = 0;
 audit_log_format(ab, " res=%d", allow_changes);
 audit_log_end(ab);
 return rc;
}
