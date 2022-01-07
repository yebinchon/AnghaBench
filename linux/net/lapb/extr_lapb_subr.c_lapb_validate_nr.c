
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lapb_cb {unsigned short va; int mode; unsigned short vs; } ;


 int LAPB_EMODULUS ;
 int LAPB_EXTENDED ;
 int LAPB_SMODULUS ;

int lapb_validate_nr(struct lapb_cb *lapb, unsigned short nr)
{
 unsigned short vc = lapb->va;
 int modulus;

 modulus = (lapb->mode & LAPB_EXTENDED) ? LAPB_EMODULUS : LAPB_SMODULUS;

 while (vc != lapb->vs) {
  if (nr == vc)
   return 1;
  vc = (vc + 1) % modulus;
 }

 return nr == lapb->vs;
}
