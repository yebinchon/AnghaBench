
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_dsp {int irq; } ;


 int SKL_DSP_CORE0_MASK ;
 int cnl_dsp_disable_core (struct sst_dsp*,int ) ;
 int cnl_ipc_int_disable (struct sst_dsp*) ;
 int cnl_ipc_op_int_disable (struct sst_dsp*) ;
 int free_irq (int ,struct sst_dsp*) ;

void cnl_dsp_free(struct sst_dsp *dsp)
{
 cnl_ipc_int_disable(dsp);

 free_irq(dsp->irq, dsp);
 cnl_ipc_op_int_disable(dsp);
 cnl_dsp_disable_core(dsp, SKL_DSP_CORE0_MASK);
}
