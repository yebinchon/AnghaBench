
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_siginfo {int dummy; } ;


 struct kernel_siginfo const* SEND_SIG_NOINFO ;
 scalar_t__ SI_FROMUSER (struct kernel_siginfo const*) ;
 int is_si_special (struct kernel_siginfo const*) ;

__attribute__((used)) static inline bool si_fromuser(const struct kernel_siginfo *info)
{
 return info == SEND_SIG_NOINFO ||
  (!is_si_special(info) && SI_FROMUSER(info));
}
