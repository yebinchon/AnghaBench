
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct evea_priv {int clk; int clk_exiv; int rst; int rst_exiv; int rst_adamv; } ;


 int clk_disable_unprepare (int ) ;
 struct evea_priv* platform_get_drvdata (struct platform_device*) ;
 int reset_control_assert (int ) ;

__attribute__((used)) static int evea_remove(struct platform_device *pdev)
{
 struct evea_priv *evea = platform_get_drvdata(pdev);

 reset_control_assert(evea->rst_adamv);
 reset_control_assert(evea->rst_exiv);
 reset_control_assert(evea->rst);

 clk_disable_unprepare(evea->clk_exiv);
 clk_disable_unprepare(evea->clk);

 return 0;
}
