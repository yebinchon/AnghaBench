
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct skl_clk_rate_cfg_table {int dummy; } ;
struct skl_clk {size_t id; TYPE_1__* pdata; int rate; } ;
struct TYPE_4__ {int rate_cfg; } ;
struct TYPE_3__ {int pvt_data; TYPE_2__* ssp_clks; } ;


 int EINVAL ;
 int skl_get_clk_type (size_t) ;
 struct skl_clk_rate_cfg_table* skl_get_rate_cfg (int ,int ) ;
 int skl_get_vbus_id (size_t,int) ;
 int skl_send_clk_dma_control (int ,struct skl_clk_rate_cfg_table*,int,int,int) ;

__attribute__((used)) static int skl_clk_change_status(struct skl_clk *clkdev,
    bool enable)
{
 struct skl_clk_rate_cfg_table *rcfg;
 int vbus_id, clk_type;

 clk_type = skl_get_clk_type(clkdev->id);
 if (clk_type < 0)
  return clk_type;

 vbus_id = skl_get_vbus_id(clkdev->id, clk_type);
 if (vbus_id < 0)
  return vbus_id;

 rcfg = skl_get_rate_cfg(clkdev->pdata->ssp_clks[clkdev->id].rate_cfg,
      clkdev->rate);
 if (!rcfg)
  return -EINVAL;

 return skl_send_clk_dma_control(clkdev->pdata->pvt_data, rcfg,
     vbus_id, clk_type, enable);
}
