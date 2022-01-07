
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct samsung_spdif_info {int pclk; int sclk; int regs; } ;
struct resource {int start; } ;
struct platform_device {int dummy; } ;


 int IORESOURCE_MEM ;
 int clk_disable_unprepare (int ) ;
 int iounmap (int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int release_mem_region (int ,int ) ;
 int resource_size (struct resource*) ;
 struct samsung_spdif_info spdif_info ;

__attribute__((used)) static int spdif_remove(struct platform_device *pdev)
{
 struct samsung_spdif_info *spdif = &spdif_info;
 struct resource *mem_res;

 iounmap(spdif->regs);

 mem_res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (mem_res)
  release_mem_region(mem_res->start, resource_size(mem_res));

 clk_disable_unprepare(spdif->sclk);
 clk_disable_unprepare(spdif->pclk);

 return 0;
}
