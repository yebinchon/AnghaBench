
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_dsp {int dev; } ;


 int dev_dbg (int ,char*) ;
 int hsw_set_dsp_D0 (struct sst_dsp*) ;

__attribute__((used)) static int hsw_wake(struct sst_dsp *sst)
{
 int ret;

 dev_dbg(sst->dev, "HSW_PM dsp runtime resume\n");

 ret = hsw_set_dsp_D0(sst);
 if (ret < 0)
  return ret;

 dev_dbg(sst->dev, "HSW_PM dsp runtime resume exit\n");

 return 0;
}
