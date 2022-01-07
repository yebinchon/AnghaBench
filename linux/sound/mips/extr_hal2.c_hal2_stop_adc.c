
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* pbus; } ;
struct TYPE_6__ {TYPE_2__ pbus; } ;
struct snd_hal2 {TYPE_3__ adc; } ;
struct TYPE_4__ {int pbdma_ctrl; } ;


 int HPC3_PDMACTRL_LD ;

__attribute__((used)) static inline void hal2_stop_adc(struct snd_hal2 *hal2)
{
 hal2->adc.pbus.pbus->pbdma_ctrl = HPC3_PDMACTRL_LD;
}
