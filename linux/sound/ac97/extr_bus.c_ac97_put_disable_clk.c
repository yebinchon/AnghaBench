
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ac97_codec_device {int clk; } ;


 int clk_disable_unprepare (int ) ;
 int clk_put (int ) ;

__attribute__((used)) static void ac97_put_disable_clk(struct ac97_codec_device *adev)
{
 clk_disable_unprepare(adev->clk);
 clk_put(adev->clk);
}
