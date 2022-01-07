
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* set_state_D0i0 ) (struct sst_dsp*) ;int (* set_state_D0i3 ) (struct sst_dsp*) ;} ;
struct sst_dsp {TYPE_1__ fw_ops; } ;


 int stub1 (struct sst_dsp*) ;
 int stub2 (struct sst_dsp*) ;

int skl_ipc_check_D0i0(struct sst_dsp *dsp, bool state)
{
 int ret;


 if (!dsp->fw_ops.set_state_D0i0)
  return 0;


 if (state)
  ret = dsp->fw_ops.set_state_D0i0(dsp);
 else
  ret = dsp->fw_ops.set_state_D0i3(dsp);

 return ret;
}
