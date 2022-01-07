
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcxhr_mgr {TYPE_1__* pci; int xlx_selmic; } ;
struct TYPE_2__ {int dev; } ;


 int PCXHR_OUTPB (struct pcxhr_mgr*,int ,int ) ;
 int PCXHR_SELMIC_PHANTOM_ALIM ;
 int PCXHR_XLX_SELMIC ;
 int dev_dbg (int *,char*,int) ;

__attribute__((used)) static void hr222_phantom_power(struct pcxhr_mgr *mgr, int power)
{
 if (power)
  mgr->xlx_selmic |= PCXHR_SELMIC_PHANTOM_ALIM;
 else
  mgr->xlx_selmic &= ~PCXHR_SELMIC_PHANTOM_ALIM;

 PCXHR_OUTPB(mgr, PCXHR_XLX_SELMIC, mgr->xlx_selmic);

 dev_dbg(&mgr->pci->dev, "hr222_phantom_power : set %d\n", power);
}
