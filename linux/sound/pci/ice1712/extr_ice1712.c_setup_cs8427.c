
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int cs8427; } ;


 int snd_cs8427_iec958_pcm (int ,int) ;

__attribute__((used)) static void setup_cs8427(struct snd_ice1712 *ice, int rate)
{
 snd_cs8427_iec958_pcm(ice->cs8427, rate);
}
