
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_krule {int listnr; int filterkey; } ;
struct audit_buffer {int dummy; } ;


 int AUDIT_CONFIG_CHANGE ;
 int GFP_KERNEL ;
 int audit_context () ;
 int audit_enabled ;
 int audit_log_end (struct audit_buffer*) ;
 int audit_log_format (struct audit_buffer*,char*,char*,...) ;
 int audit_log_key (struct audit_buffer*,int ) ;
 int audit_log_session_info (struct audit_buffer*) ;
 struct audit_buffer* audit_log_start (int ,int ,int ) ;
 int audit_log_task_context (struct audit_buffer*) ;

__attribute__((used)) static void audit_log_rule_change(char *action, struct audit_krule *rule, int res)
{
 struct audit_buffer *ab;

 if (!audit_enabled)
  return;

 ab = audit_log_start(audit_context(), GFP_KERNEL, AUDIT_CONFIG_CHANGE);
 if (!ab)
  return;
 audit_log_session_info(ab);
 audit_log_task_context(ab);
 audit_log_format(ab, " op=%s", action);
 audit_log_key(ab, rule->filterkey);
 audit_log_format(ab, " list=%d res=%d", rule->listnr, res);
 audit_log_end(ab);
}
