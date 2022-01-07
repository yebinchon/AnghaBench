
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_siginfo {int si_code; int si_signo; } ;
 int siginfo_layout (int ,int ) ;

__attribute__((used)) static inline bool has_si_pid_and_uid(struct kernel_siginfo *info)
{
 bool ret = 0;
 switch (siginfo_layout(info->si_signo, info->si_code)) {
 case 132:
 case 137:
 case 130:
  ret = 1;
  break;
 case 128:
 case 131:
 case 136:
 case 134:
 case 135:
 case 133:
 case 129:
  ret = 0;
  break;
 }
 return ret;
}
