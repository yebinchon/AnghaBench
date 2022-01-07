
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int SECCOMP_LOG_ERRNO ;
 int SECCOMP_LOG_KILL_PROCESS ;
 int SECCOMP_LOG_KILL_THREAD ;
 int SECCOMP_LOG_LOG ;
 int SECCOMP_LOG_TRACE ;
 int SECCOMP_LOG_TRAP ;
 int SECCOMP_LOG_USER_NOTIF ;
 int audit_seccomp (unsigned long,long,int) ;
 int seccomp_actions_logged ;

__attribute__((used)) static inline void seccomp_log(unsigned long syscall, long signr, u32 action,
          bool requested)
{
 bool log = 0;

 switch (action) {
 case 135:
  break;
 case 129:
  log = requested && seccomp_actions_logged & SECCOMP_LOG_TRAP;
  break;
 case 134:
  log = requested && seccomp_actions_logged & SECCOMP_LOG_ERRNO;
  break;
 case 130:
  log = requested && seccomp_actions_logged & SECCOMP_LOG_TRACE;
  break;
 case 128:
  log = requested && seccomp_actions_logged & SECCOMP_LOG_USER_NOTIF;
  break;
 case 131:
  log = seccomp_actions_logged & SECCOMP_LOG_LOG;
  break;
 case 132:
  log = seccomp_actions_logged & SECCOMP_LOG_KILL_THREAD;
  break;
 case 133:
 default:
  log = seccomp_actions_logged & SECCOMP_LOG_KILL_PROCESS;
 }







 if (!log)
  return;

 audit_seccomp(syscall, signr, action);
}
