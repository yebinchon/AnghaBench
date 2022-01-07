
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned short va; unsigned short vs; unsigned short modulus; } ;
typedef TYPE_1__ ax25_cb ;



int ax25_validate_nr(ax25_cb *ax25, unsigned short nr)
{
 unsigned short vc = ax25->va;

 while (vc != ax25->vs) {
  if (nr == vc) return 1;
  vc = (vc + 1) % ax25->modulus;
 }

 if (nr == ax25->vs) return 1;

 return 0;
}
