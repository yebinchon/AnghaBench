
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_buffer {int dummy; } ;


 int AUDIT_CONFIG_CHANGE ;
 int GFP_KERNEL ;
 int audit_context () ;
 int audit_enabled ;
 int audit_log_end (struct audit_buffer*) ;
 int audit_log_format (struct audit_buffer*,char*,char const*,char const*,int) ;
 struct audit_buffer* audit_log_start (int ,int ,int ) ;
 scalar_t__ unlikely (int) ;

void audit_seccomp_actions_logged(const char *names, const char *old_names,
      int res)
{
 struct audit_buffer *ab;

 if (!audit_enabled)
  return;

 ab = audit_log_start(audit_context(), GFP_KERNEL,
        AUDIT_CONFIG_CHANGE);
 if (unlikely(!ab))
  return;

 audit_log_format(ab,
    "op=seccomp-logging actions=%s old-actions=%s res=%d",
    names, old_names, res);
 audit_log_end(ab);
}
