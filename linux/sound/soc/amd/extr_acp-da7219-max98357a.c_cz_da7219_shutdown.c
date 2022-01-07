
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 int da7219_clk_disable () ;

__attribute__((used)) static void cz_da7219_shutdown(struct snd_pcm_substream *substream)
{
 da7219_clk_disable();
}
