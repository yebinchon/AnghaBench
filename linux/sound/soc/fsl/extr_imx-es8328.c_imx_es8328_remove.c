
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct imx_es8328_data {int card; } ;


 struct imx_es8328_data* platform_get_drvdata (struct platform_device*) ;
 int snd_soc_unregister_card (int *) ;

__attribute__((used)) static int imx_es8328_remove(struct platform_device *pdev)
{
 struct imx_es8328_data *data = platform_get_drvdata(pdev);

 snd_soc_unregister_card(&data->card);

 return 0;
}
