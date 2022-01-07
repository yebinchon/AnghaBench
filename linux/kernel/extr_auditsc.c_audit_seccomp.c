
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_buffer {int dummy; } ;


 int AUDIT_SECCOMP ;
 int GFP_KERNEL ;
 int KSTK_EIP (int ) ;
 int audit_context () ;
 int audit_log_end (struct audit_buffer*) ;
 int audit_log_format (struct audit_buffer*,char*,long,int ,unsigned long,int ,int ,int) ;
 struct audit_buffer* audit_log_start (int ,int ,int ) ;
 int audit_log_task (struct audit_buffer*) ;
 int current ;
 int in_compat_syscall () ;
 int syscall_get_arch (int ) ;
 scalar_t__ unlikely (int) ;

void audit_seccomp(unsigned long syscall, long signr, int code)
{
 struct audit_buffer *ab;

 ab = audit_log_start(audit_context(), GFP_KERNEL, AUDIT_SECCOMP);
 if (unlikely(!ab))
  return;
 audit_log_task(ab);
 audit_log_format(ab, " sig=%ld arch=%x syscall=%ld compat=%d ip=0x%lx code=0x%x",
    signr, syscall_get_arch(current), syscall,
    in_compat_syscall(), KSTK_EIP(current), code);
 audit_log_end(ab);
}
