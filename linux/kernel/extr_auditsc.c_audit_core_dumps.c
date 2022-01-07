
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_buffer {int dummy; } ;


 int AUDIT_ANOM_ABEND ;
 int GFP_KERNEL ;
 long SIGQUIT ;
 int audit_context () ;
 int audit_enabled ;
 int audit_log_end (struct audit_buffer*) ;
 int audit_log_format (struct audit_buffer*,char*,long) ;
 struct audit_buffer* audit_log_start (int ,int ,int ) ;
 int audit_log_task (struct audit_buffer*) ;
 scalar_t__ unlikely (int) ;

void audit_core_dumps(long signr)
{
 struct audit_buffer *ab;

 if (!audit_enabled)
  return;

 if (signr == SIGQUIT)
  return;

 ab = audit_log_start(audit_context(), GFP_KERNEL, AUDIT_ANOM_ABEND);
 if (unlikely(!ab))
  return;
 audit_log_task(ab);
 audit_log_format(ab, " sig=%ld res=1", signr);
 audit_log_end(ab);
}
