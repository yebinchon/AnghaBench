
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {size_t id; struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct pcm3168a_priv {struct pcm3168a_io_params* io_params; } ;
struct pcm3168a_io_params {int tdm_slots; int slot_width; unsigned int tdm_mask; } ;


 int EINVAL ;
 size_t PCM3168A_DAI_DAC ;
 int dev_err (int ,char*,int,...) ;
 struct pcm3168a_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int pcm3168a_set_tdm_slot(struct snd_soc_dai *dai, unsigned int tx_mask,
     unsigned int rx_mask, int slots,
     int slot_width)
{
 struct snd_soc_component *component = dai->component;
 struct pcm3168a_priv *pcm3168a = snd_soc_component_get_drvdata(component);
 struct pcm3168a_io_params *io_params = &pcm3168a->io_params[dai->id];

 if (tx_mask >= (1<<slots) || rx_mask >= (1<<slots)) {
  dev_err(component->dev,
   "Bad tdm mask tx: 0x%08x rx: 0x%08x slots %d\n",
   tx_mask, rx_mask, slots);
  return -EINVAL;
 }

 if (slot_width &&
     (slot_width != 16 && slot_width != 24 && slot_width != 32 )) {
  dev_err(component->dev, "Unsupported slot_width %d\n",
   slot_width);
  return -EINVAL;
 }

 io_params->tdm_slots = slots;
 io_params->slot_width = slot_width;

 if (dai->id == PCM3168A_DAI_DAC)
  io_params->tdm_mask = tx_mask;
 else
  io_params->tdm_mask = rx_mask;

 return 0;
}
