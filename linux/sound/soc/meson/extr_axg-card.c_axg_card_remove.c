
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct axg_card {int dummy; } ;


 int axg_card_clean_references (struct axg_card*) ;
 struct axg_card* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int axg_card_remove(struct platform_device *pdev)
{
 struct axg_card *priv = platform_get_drvdata(pdev);

 axg_card_clean_references(priv);

 return 0;
}
