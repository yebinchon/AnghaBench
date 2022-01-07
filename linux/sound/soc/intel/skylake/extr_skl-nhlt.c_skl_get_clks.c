
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct skl_ssp_clk {int dummy; } ;
struct skl_dev {scalar_t__ nhlt; } ;
struct nhlt_fmt {int dummy; } ;
struct TYPE_2__ {scalar_t__ size; scalar_t__ caps; } ;
struct nhlt_endpoint {scalar_t__ linktype; int length; TYPE_1__ config; int virtual_bus_id; } ;
struct nhlt_acpi_table {int endpoint_count; scalar_t__ desc; } ;


 scalar_t__ NHLT_LINK_SSP ;
 int skl_get_mclk (struct skl_dev*,struct skl_ssp_clk*,struct nhlt_fmt*,int ) ;
 int skl_get_ssp_clks (struct skl_dev*,struct skl_ssp_clk*,struct nhlt_fmt*,int ) ;

void skl_get_clks(struct skl_dev *skl, struct skl_ssp_clk *ssp_clks)
{
 struct nhlt_acpi_table *nhlt = (struct nhlt_acpi_table *)skl->nhlt;
 struct nhlt_endpoint *epnt;
 struct nhlt_fmt *fmt;
 int i;
 u8 id;

 epnt = (struct nhlt_endpoint *)nhlt->desc;
 for (i = 0; i < nhlt->endpoint_count; i++) {
  if (epnt->linktype == NHLT_LINK_SSP) {
   id = epnt->virtual_bus_id;

   fmt = (struct nhlt_fmt *)(epnt->config.caps
     + epnt->config.size);

   skl_get_ssp_clks(skl, ssp_clks, fmt, id);
   skl_get_mclk(skl, ssp_clks, fmt, id);
  }
  epnt = (struct nhlt_endpoint *)((u8 *)epnt + epnt->length);
 }
}
