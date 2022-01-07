
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_siginfo {int dummy; } ;


 struct kernel_siginfo const* SEND_SIG_PRIV ;

__attribute__((used)) static inline int is_si_special(const struct kernel_siginfo *info)
{
 return info <= SEND_SIG_PRIV;
}
