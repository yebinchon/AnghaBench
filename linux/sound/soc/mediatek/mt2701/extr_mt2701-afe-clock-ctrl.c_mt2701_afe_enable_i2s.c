
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_base_afe {int dev; } ;
struct mt2701_i2s_path {int asrco_ck; int * hop_ck; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*,int) ;

int mt2701_afe_enable_i2s(struct mtk_base_afe *afe,
     struct mt2701_i2s_path *i2s_path,
     int dir)
{
 int ret;

 ret = clk_prepare_enable(i2s_path->asrco_ck);
 if (ret) {
  dev_err(afe->dev, "failed to enable ASRC clock %d\n", ret);
  return ret;
 }

 ret = clk_prepare_enable(i2s_path->hop_ck[dir]);
 if (ret) {
  dev_err(afe->dev, "failed to enable I2S clock %d\n", ret);
  goto err_hop_ck;
 }

 return 0;

err_hop_ck:
 clk_disable_unprepare(i2s_path->asrco_ck);

 return ret;
}
