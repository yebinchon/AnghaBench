
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct torture_random_state {int dummy; } ;


 int RCUTORTURE_RDR_BH ;
 int RCUTORTURE_RDR_IRQ ;
 unsigned long RCUTORTURE_RDR_NBITS ;
 int RCUTORTURE_RDR_RBH ;
 int RCUTORTURE_RDR_RCU ;
 int RCUTORTURE_RDR_SHIFT ;
 int WARN_ON_ONCE (int) ;
 int rcutorture_extend_mask_max () ;
 int torture_random (struct torture_random_state*) ;

__attribute__((used)) static int
rcutorture_extend_mask(int oldmask, struct torture_random_state *trsp)
{
 int mask = rcutorture_extend_mask_max();
 unsigned long randmask1 = torture_random(trsp) >> 8;
 unsigned long randmask2 = randmask1 >> 3;

 WARN_ON_ONCE(mask >> RCUTORTURE_RDR_SHIFT);

 if (!(randmask1 & 0x7))
  mask = mask & randmask2;
 else
  mask = mask & (1 << (randmask2 % RCUTORTURE_RDR_NBITS));

 if ((mask & RCUTORTURE_RDR_IRQ) &&
     ((!(mask & RCUTORTURE_RDR_BH) && (oldmask & RCUTORTURE_RDR_BH)) ||
      (!(mask & RCUTORTURE_RDR_RBH) && (oldmask & RCUTORTURE_RDR_RBH))))
  mask |= RCUTORTURE_RDR_BH | RCUTORTURE_RDR_RBH;
 return mask ?: RCUTORTURE_RDR_RCU;
}
