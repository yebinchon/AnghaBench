
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct mtk_btcvsd_snd {int bt_sram_bank2_base; int bt_pkv_base; } ;


 struct mtk_btcvsd_snd* dev_get_drvdata (int *) ;
 int iounmap (int ) ;

__attribute__((used)) static int mtk_btcvsd_snd_remove(struct platform_device *pdev)
{
 struct mtk_btcvsd_snd *btcvsd = dev_get_drvdata(&pdev->dev);

 iounmap(btcvsd->bt_pkv_base);
 iounmap(btcvsd->bt_sram_bank2_base);
 return 0;
}
