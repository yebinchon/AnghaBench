
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sirf_audio_codec {int clk; } ;
struct platform_device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct sirf_audio_codec* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int sirf_audio_codec_driver_remove(struct platform_device *pdev)
{
 struct sirf_audio_codec *sirf_audio_codec = platform_get_drvdata(pdev);

 clk_disable_unprepare(sirf_audio_codec->clk);

 return 0;
}
