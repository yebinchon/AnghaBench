
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct axg_fifo {int map; } ;


 int CTRL1_FRDDR_FORCE_FINISH ;
 int FIFO_CTRL1 ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct axg_fifo* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int g12a_frddr_dai_prepare(struct snd_pcm_substream *substream,
      struct snd_soc_dai *dai)
{
 struct axg_fifo *fifo = snd_soc_dai_get_drvdata(dai);


 regmap_update_bits(fifo->map, FIFO_CTRL1,
      CTRL1_FRDDR_FORCE_FINISH, 0);
 regmap_update_bits(fifo->map, FIFO_CTRL1,
      CTRL1_FRDDR_FORCE_FINISH, CTRL1_FRDDR_FORCE_FINISH);
 regmap_update_bits(fifo->map, FIFO_CTRL1,
      CTRL1_FRDDR_FORCE_FINISH, 0);

 return 0;
}
