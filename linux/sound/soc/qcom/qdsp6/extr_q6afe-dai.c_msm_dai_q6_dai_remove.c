
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {size_t id; int dev; } ;
struct q6afe_dai_data {int ** port; } ;


 struct q6afe_dai_data* dev_get_drvdata (int ) ;
 int q6afe_port_put (int *) ;

__attribute__((used)) static int msm_dai_q6_dai_remove(struct snd_soc_dai *dai)
{
 struct q6afe_dai_data *dai_data = dev_get_drvdata(dai->dev);

 q6afe_port_put(dai_data->port[dai->id]);
 dai_data->port[dai->id] = ((void*)0);

 return 0;
}
