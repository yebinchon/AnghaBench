
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct pcm030_audio_data {int codec_device; int card; } ;


 int platform_device_unregister (int ) ;
 struct pcm030_audio_data* platform_get_drvdata (struct platform_device*) ;
 int snd_soc_unregister_card (int ) ;

__attribute__((used)) static int pcm030_fabric_remove(struct platform_device *op)
{
 struct pcm030_audio_data *pdata = platform_get_drvdata(op);
 int ret;

 ret = snd_soc_unregister_card(pdata->card);
 platform_device_unregister(pdata->codec_device);

 return ret;
}
