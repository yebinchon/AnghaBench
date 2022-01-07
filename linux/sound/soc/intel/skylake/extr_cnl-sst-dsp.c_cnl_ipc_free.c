
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_generic_ipc {int dsp; } ;


 int cnl_ipc_op_int_disable (int ) ;
 int sst_ipc_fini (struct sst_generic_ipc*) ;

void cnl_ipc_free(struct sst_generic_ipc *ipc)
{
 cnl_ipc_op_int_disable(ipc->dsp);
 sst_ipc_fini(ipc);
}
