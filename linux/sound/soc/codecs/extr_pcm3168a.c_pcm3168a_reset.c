
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcm3168a_priv {int regmap; int sysclk; } ;


 int DIV_ROUND_UP (int,int ) ;
 int PCM3168A_MRST_MASK ;
 int PCM3168A_RST_SMODE ;
 int PCM3168A_SRST_MASK ;
 int msleep (int ) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int pcm3168a_reset(struct pcm3168a_priv *pcm3168a)
{
 int ret;

 ret = regmap_write(pcm3168a->regmap, PCM3168A_RST_SMODE, 0);
 if (ret)
  return ret;


 msleep(DIV_ROUND_UP(3846 * 1000, pcm3168a->sysclk));

 return regmap_write(pcm3168a->regmap, PCM3168A_RST_SMODE,
   PCM3168A_MRST_MASK | PCM3168A_SRST_MASK);
}
