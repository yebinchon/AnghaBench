
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int limit; } ;


 int NSIGPOLL ;
 int SI_ASYNCNL ;
 int SI_DETHREAD ;
 int SI_KERNEL ;
 int SI_USER ;
 TYPE_1__* sig_sicodes ;
 scalar_t__ sig_specific_sicodes (unsigned int) ;

__attribute__((used)) static bool known_siginfo_layout(unsigned sig, int si_code)
{
 if (si_code == SI_KERNEL)
  return 1;
 else if ((si_code > SI_USER)) {
  if (sig_specific_sicodes(sig)) {
   if (si_code <= sig_sicodes[sig].limit)
    return 1;
  }
  else if (si_code <= NSIGPOLL)
   return 1;
 }
 else if (si_code >= SI_DETHREAD)
  return 1;
 else if (si_code == SI_ASYNCNL)
  return 1;
 return 0;
}
