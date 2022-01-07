
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 int clk_disable (int ) ;
 int tlv320aic23_mclk ;

__attribute__((used)) static void osk_shutdown(struct snd_pcm_substream *substream)
{
 clk_disable(tlv320aic23_mclk);
}
