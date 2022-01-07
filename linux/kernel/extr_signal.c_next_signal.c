
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned long* sig; } ;
struct sigpending {TYPE_1__ signal; } ;
struct TYPE_5__ {unsigned long* sig; } ;
typedef TYPE_2__ sigset_t ;


 unsigned long SYNCHRONOUS_MASK ;
 unsigned long _NSIG_BPW ;
 int _NSIG_WORDS ;
 unsigned long ffz (unsigned long) ;

int next_signal(struct sigpending *pending, sigset_t *mask)
{
 unsigned long i, *s, *m, x;
 int sig = 0;

 s = pending->signal.sig;
 m = mask->sig;





 x = *s &~ *m;
 if (x) {
  if (x & SYNCHRONOUS_MASK)
   x &= SYNCHRONOUS_MASK;
  sig = ffz(~x) + 1;
  return sig;
 }

 switch (_NSIG_WORDS) {
 default:
  for (i = 1; i < _NSIG_WORDS; ++i) {
   x = *++s &~ *++m;
   if (!x)
    continue;
   sig = ffz(~x) + i*_NSIG_BPW + 1;
   break;
  }
  break;

 case 2:
  x = s[1] &~ m[1];
  if (!x)
   break;
  sig = ffz(~x) + _NSIG_BPW + 1;
  break;

 case 1:

  break;
 }

 return sig;
}
