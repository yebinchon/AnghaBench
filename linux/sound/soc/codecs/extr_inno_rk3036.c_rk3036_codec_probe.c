
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int rk3036_codec_reset (struct snd_soc_component*) ;

__attribute__((used)) static int rk3036_codec_probe(struct snd_soc_component *component)
{
 rk3036_codec_reset(component);
 return 0;
}
