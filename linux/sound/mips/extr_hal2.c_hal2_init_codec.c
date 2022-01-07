
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hpc3_regs {int * pbdma; } ;
struct TYPE_2__ {int pbusnr; int * pbus; } ;
struct hal2_codec {TYPE_1__ pbus; } ;



__attribute__((used)) static void hal2_init_codec(struct hal2_codec *codec, struct hpc3_regs *hpc3,
       int index)
{
 codec->pbus.pbusnr = index;
 codec->pbus.pbus = &hpc3->pbdma[index];
}
