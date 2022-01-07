
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcxhr_mgr {unsigned char xlx_selmic; TYPE_1__* pci; } ;
struct TYPE_2__ {int dev; } ;


 int PCXHR_OUTPB (struct pcxhr_mgr*,int ,unsigned char) ;
 unsigned char PCXHR_SELMIC_PREAMPLI_MASK ;
 int PCXHR_SELMIC_PREAMPLI_OFFSET ;
 int PCXHR_XLX_SELMIC ;
 int dev_dbg (int *,char*,unsigned char) ;

__attribute__((used)) static void hr222_micro_boost(struct pcxhr_mgr *mgr, int level)
{
 unsigned char boost_mask;
 boost_mask = (unsigned char) (level << PCXHR_SELMIC_PREAMPLI_OFFSET);
 if (boost_mask & (~PCXHR_SELMIC_PREAMPLI_MASK))
  return;

 mgr->xlx_selmic &= ~PCXHR_SELMIC_PREAMPLI_MASK;
 mgr->xlx_selmic |= boost_mask;

 PCXHR_OUTPB(mgr, PCXHR_XLX_SELMIC, mgr->xlx_selmic);

 dev_dbg(&mgr->pci->dev, "hr222_micro_boost : set %x\n", boost_mask);
}
