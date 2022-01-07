
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssp_priv {struct ssp_device* ssp; } ;
struct ssp_device {int dummy; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;


 int EINVAL ;






 int SSSR ;
 int dump_registers (struct ssp_device*) ;
 int pxa_ssp_disable (struct ssp_device*) ;
 int pxa_ssp_enable (struct ssp_device*) ;
 int pxa_ssp_read_reg (struct ssp_device*,int ) ;
 int pxa_ssp_set_running_bit (struct snd_pcm_substream*,struct ssp_device*,int) ;
 int pxa_ssp_write_reg (struct ssp_device*,int ,int) ;
 struct ssp_priv* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int pxa_ssp_trigger(struct snd_pcm_substream *substream, int cmd,
      struct snd_soc_dai *cpu_dai)
{
 int ret = 0;
 struct ssp_priv *priv = snd_soc_dai_get_drvdata(cpu_dai);
 struct ssp_device *ssp = priv->ssp;
 int val;

 switch (cmd) {
 case 131:
  pxa_ssp_enable(ssp);
  break;
 case 132:
  pxa_ssp_set_running_bit(substream, ssp, 1);
  val = pxa_ssp_read_reg(ssp, SSSR);
  pxa_ssp_write_reg(ssp, SSSR, val);
  break;
 case 130:
  pxa_ssp_set_running_bit(substream, ssp, 1);
  break;
 case 129:
  pxa_ssp_set_running_bit(substream, ssp, 0);
  break;
 case 128:
  pxa_ssp_disable(ssp);
  break;
 case 133:
  pxa_ssp_set_running_bit(substream, ssp, 0);
  break;

 default:
  ret = -EINVAL;
 }

 dump_registers(ssp);

 return ret;
}
