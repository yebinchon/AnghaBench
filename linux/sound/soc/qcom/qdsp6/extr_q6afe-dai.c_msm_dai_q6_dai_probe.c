
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {size_t id; int dev; } ;
struct q6afe_port {int dummy; } ;
struct q6afe_dai_data {struct q6afe_port** port; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct q6afe_port*) ;
 int dev_err (int ,char*) ;
 struct q6afe_dai_data* dev_get_drvdata (int ) ;
 struct q6afe_port* q6afe_port_get_from_id (int ,size_t) ;

__attribute__((used)) static int msm_dai_q6_dai_probe(struct snd_soc_dai *dai)
{
 struct q6afe_dai_data *dai_data = dev_get_drvdata(dai->dev);
 struct q6afe_port *port;

 port = q6afe_port_get_from_id(dai->dev, dai->id);
 if (IS_ERR(port)) {
  dev_err(dai->dev, "Unable to get afe port\n");
  return -EINVAL;
 }
 dai_data->port[dai->id] = port;

 return 0;
}
