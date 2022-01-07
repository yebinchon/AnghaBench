
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_pdata {struct sst_byt* dsp; } ;
struct sst_byt {int ipc; int dsp; } ;
struct device {int dummy; } ;


 int sst_dsp_free (int ) ;
 int sst_dsp_reset (int ) ;
 int sst_fw_free_all (int ) ;
 int sst_ipc_fini (int *) ;

void sst_byt_dsp_free(struct device *dev, struct sst_pdata *pdata)
{
 struct sst_byt *byt = pdata->dsp;

 sst_dsp_reset(byt->dsp);
 sst_fw_free_all(byt->dsp);
 sst_dsp_free(byt->dsp);
 sst_ipc_fini(&byt->ipc);
}
