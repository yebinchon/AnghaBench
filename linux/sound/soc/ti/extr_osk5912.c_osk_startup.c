
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 int clk_enable (int ) ;
 int tlv320aic23_mclk ;

__attribute__((used)) static int osk_startup(struct snd_pcm_substream *substream)
{
 return clk_enable(tlv320aic23_mclk);
}
