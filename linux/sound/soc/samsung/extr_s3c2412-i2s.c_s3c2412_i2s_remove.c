
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_dai {int dummy; } ;
struct TYPE_3__ {int iis_cclk; } ;


 int clk_disable_unprepare (int ) ;
 TYPE_1__ s3c2412_i2s ;
 int s3c_i2sv2_cleanup (struct snd_soc_dai*,TYPE_1__*) ;

__attribute__((used)) static int s3c2412_i2s_remove(struct snd_soc_dai *dai)
{
 clk_disable_unprepare(s3c2412_i2s.iis_cclk);
 s3c_i2sv2_cleanup(dai, &s3c2412_i2s);

 return 0;
}
