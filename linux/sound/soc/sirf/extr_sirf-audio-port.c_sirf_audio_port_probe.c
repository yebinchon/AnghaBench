
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sirf_audio_port {int dummy; } ;
struct platform_device {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct sirf_audio_port* devm_kzalloc (int *,int,int ) ;
 int devm_snd_dmaengine_pcm_register (int *,int *,int ) ;
 int devm_snd_soc_register_component (int *,int *,int *,int) ;
 int platform_set_drvdata (struct platform_device*,struct sirf_audio_port*) ;
 int sirf_audio_port_component ;
 int sirf_audio_port_dai ;

__attribute__((used)) static int sirf_audio_port_probe(struct platform_device *pdev)
{
 int ret;
 struct sirf_audio_port *port;

 port = devm_kzalloc(&pdev->dev,
   sizeof(struct sirf_audio_port), GFP_KERNEL);
 if (!port)
  return -ENOMEM;

 ret = devm_snd_soc_register_component(&pdev->dev,
   &sirf_audio_port_component, &sirf_audio_port_dai, 1);
 if (ret)
  return ret;

 platform_set_drvdata(pdev, port);
 return devm_snd_dmaengine_pcm_register(&pdev->dev, ((void*)0), 0);
}
