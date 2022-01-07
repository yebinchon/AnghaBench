
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_dsp_busy; int tx_data_copy; int tx_msg; } ;
struct sst_generic_ipc {TYPE_1__ ops; int rx_data_max_size; int tx_data_max_size; struct device* dev; int dsp; } ;
struct skl_dev {int dsp; struct sst_generic_ipc ipc; } ;
struct device {int dummy; } ;


 int CNL_ADSP_W0_UP_SZ ;
 int CNL_ADSP_W1_SZ ;
 int cnl_ipc_is_dsp_busy ;
 int cnl_ipc_tx_msg ;
 int skl_ipc_tx_data_copy ;
 int sst_ipc_init (struct sst_generic_ipc*) ;

__attribute__((used)) static int cnl_ipc_init(struct device *dev, struct skl_dev *cnl)
{
 struct sst_generic_ipc *ipc;
 int err;

 ipc = &cnl->ipc;
 ipc->dsp = cnl->dsp;
 ipc->dev = dev;

 ipc->tx_data_max_size = CNL_ADSP_W1_SZ;
 ipc->rx_data_max_size = CNL_ADSP_W0_UP_SZ;

 err = sst_ipc_init(ipc);
 if (err)
  return err;





 ipc->ops.tx_msg = cnl_ipc_tx_msg;
 ipc->ops.tx_data_copy = skl_ipc_tx_data_copy;
 ipc->ops.is_dsp_busy = cnl_ipc_is_dsp_busy;

 return 0;
}
