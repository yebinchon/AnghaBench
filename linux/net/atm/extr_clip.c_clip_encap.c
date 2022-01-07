
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct atm_vcc {int dummy; } ;
struct TYPE_2__ {int encap; } ;


 TYPE_1__* CLIP_VCC (struct atm_vcc*) ;
 int EBADFD ;

__attribute__((used)) static int clip_encap(struct atm_vcc *vcc, int mode)
{
 if (!CLIP_VCC(vcc))
  return -EBADFD;

 CLIP_VCC(vcc)->encap = mode;
 return 0;
}
