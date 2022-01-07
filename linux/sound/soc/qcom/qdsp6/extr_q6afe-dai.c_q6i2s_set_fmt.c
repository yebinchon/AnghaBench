
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {size_t id; int dev; } ;
struct q6afe_i2s_cfg {unsigned int fmt; } ;
struct q6afe_dai_data {TYPE_1__* port_config; } ;
struct TYPE_2__ {struct q6afe_i2s_cfg i2s_cfg; } ;


 struct q6afe_dai_data* dev_get_drvdata (int ) ;

__attribute__((used)) static int q6i2s_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
{
 struct q6afe_dai_data *dai_data = dev_get_drvdata(dai->dev);
 struct q6afe_i2s_cfg *i2s = &dai_data->port_config[dai->id].i2s_cfg;

 i2s->fmt = fmt;

 return 0;
}
