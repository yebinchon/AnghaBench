
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcxhr_mgr {TYPE_1__* pci; } ;
struct firmware {unsigned char* data; unsigned int size; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 unsigned int PCXHR_CHIPSC_DATA_CLK ;
 unsigned int PCXHR_CHIPSC_DATA_IN ;
 unsigned int PCXHR_CHIPSC_GPI_USERI ;
 unsigned int PCXHR_CHIPSC_RESET_XILINX ;
 unsigned int PCXHR_INPL (struct pcxhr_mgr*,int ) ;
 int PCXHR_OUTPL (struct pcxhr_mgr*,int ,unsigned int) ;
 int PCXHR_PLX_CHIPSC ;
 int PCXHR_WAIT_DEFAULT ;
 int cond_resched () ;
 int dev_err (int *,char*) ;
 int msleep (int ) ;

int pcxhr_load_xilinx_binary(struct pcxhr_mgr *mgr,
        const struct firmware *xilinx, int second)
{
 unsigned int i;
 unsigned int chipsc;
 unsigned char data;
 unsigned char mask;
 const unsigned char *image;


 chipsc = PCXHR_INPL(mgr, PCXHR_PLX_CHIPSC);




 if(second) {
  if ((chipsc & PCXHR_CHIPSC_GPI_USERI) == 0) {
   dev_err(&mgr->pci->dev, "error loading first xilinx\n");
   return -EINVAL;
  }

  chipsc |= PCXHR_CHIPSC_RESET_XILINX;
  PCXHR_OUTPL(mgr, PCXHR_PLX_CHIPSC, chipsc);
  msleep( PCXHR_WAIT_DEFAULT );
 }
 image = xilinx->data;
 for (i = 0; i < xilinx->size; i++, image++) {
  data = *image;
  mask = 0x80;
  while (mask) {
   chipsc &= ~(PCXHR_CHIPSC_DATA_CLK |
        PCXHR_CHIPSC_DATA_IN);
   if (data & mask)
    chipsc |= PCXHR_CHIPSC_DATA_IN;
   PCXHR_OUTPL(mgr, PCXHR_PLX_CHIPSC, chipsc);
   chipsc |= PCXHR_CHIPSC_DATA_CLK;
   PCXHR_OUTPL(mgr, PCXHR_PLX_CHIPSC, chipsc);
   mask >>= 1;
  }

  cond_resched();
 }
 chipsc &= ~(PCXHR_CHIPSC_DATA_CLK | PCXHR_CHIPSC_DATA_IN);
 PCXHR_OUTPL(mgr, PCXHR_PLX_CHIPSC, chipsc);

 msleep( PCXHR_WAIT_DEFAULT );
 return 0;
}
