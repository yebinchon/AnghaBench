
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct hdmi_audio_data {int card; } ;


 struct hdmi_audio_data* platform_get_drvdata (struct platform_device*) ;
 int snd_soc_unregister_card (int ) ;

__attribute__((used)) static int omap_hdmi_audio_remove(struct platform_device *pdev)
{
 struct hdmi_audio_data *ad = platform_get_drvdata(pdev);

 snd_soc_unregister_card(ad->card);
 return 0;
}
