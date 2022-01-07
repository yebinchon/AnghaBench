
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcm512x_priv {int mute; int regmap; } ;


 int PCM512x_MUTE ;
 int PCM512x_RQML ;
 int PCM512x_RQML_SHIFT ;
 int PCM512x_RQMR ;
 int PCM512x_RQMR_SHIFT ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int pcm512x_update_mute(struct pcm512x_priv *pcm512x)
{
 return regmap_update_bits(
  pcm512x->regmap, PCM512x_MUTE, PCM512x_RQML | PCM512x_RQMR,
  (!!(pcm512x->mute & 0x5) << PCM512x_RQML_SHIFT)
  | (!!(pcm512x->mute & 0x3) << PCM512x_RQMR_SHIFT));
}
