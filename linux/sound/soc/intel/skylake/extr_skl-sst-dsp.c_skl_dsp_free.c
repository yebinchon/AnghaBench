
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_dsp {int irq; } ;


 int SKL_DSP_CORE0_MASK ;
 int free_irq (int ,struct sst_dsp*) ;
 int skl_dsp_disable_core (struct sst_dsp*,int ) ;
 int skl_ipc_int_disable (struct sst_dsp*) ;
 int skl_ipc_op_int_disable (struct sst_dsp*) ;

void skl_dsp_free(struct sst_dsp *dsp)
{
 skl_ipc_int_disable(dsp);

 free_irq(dsp->irq, dsp);
 skl_ipc_op_int_disable(dsp);
 skl_dsp_disable_core(dsp, SKL_DSP_CORE0_MASK);
}
