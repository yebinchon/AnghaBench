
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct snd_soc_dai_link {scalar_t__ dpcm_capture; scalar_t__ dpcm_playback; } ;
struct snd_soc_card {int dev; } ;
struct device_node {int dummy; } ;
struct axg_dai_link_tdm_data {int slots; int slot_width; scalar_t__* rx_mask; scalar_t__* tx_mask; } ;


 int AXG_TDM_NUM_LANES ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int ,char*) ;
 void* devm_kcalloc (int ,int,int,int ) ;
 int fls (scalar_t__) ;
 scalar_t__ max (scalar_t__,scalar_t__) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 int snd_soc_of_get_slot_mask (struct device_node*,char*,scalar_t__*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int axg_card_parse_cpu_tdm_slots(struct snd_soc_card *card,
     struct snd_soc_dai_link *link,
     struct device_node *node,
     struct axg_dai_link_tdm_data *be)
{
 char propname[32];
 u32 tx, rx;
 int i;

 be->tx_mask = devm_kcalloc(card->dev, AXG_TDM_NUM_LANES,
       sizeof(*be->tx_mask), GFP_KERNEL);
 be->rx_mask = devm_kcalloc(card->dev, AXG_TDM_NUM_LANES,
       sizeof(*be->rx_mask), GFP_KERNEL);
 if (!be->tx_mask || !be->rx_mask)
  return -ENOMEM;

 for (i = 0, tx = 0; i < AXG_TDM_NUM_LANES; i++) {
  snprintf(propname, 32, "dai-tdm-slot-tx-mask-%d", i);
  snd_soc_of_get_slot_mask(node, propname, &be->tx_mask[i]);
  tx = max(tx, be->tx_mask[i]);
 }


 if (!tx)
  link->dpcm_playback = 0;

 for (i = 0, rx = 0; i < AXG_TDM_NUM_LANES; i++) {
  snprintf(propname, 32, "dai-tdm-slot-rx-mask-%d", i);
  snd_soc_of_get_slot_mask(node, propname, &be->rx_mask[i]);
  rx = max(rx, be->rx_mask[i]);
 }


 if (!rx)
  link->dpcm_capture = 0;


 if (!tx && !rx) {
  dev_err(card->dev, "tdm link has no cpu slots\n");
  return -EINVAL;
 }

 of_property_read_u32(node, "dai-tdm-slot-num", &be->slots);
 if (!be->slots) {




  be->slots = fls(max(tx, rx));
 } else if (be->slots < fls(max(tx, rx)) || be->slots > 32) {




  dev_err(card->dev, "bad slot number\n");
  return -EINVAL;
 }

 of_property_read_u32(node, "dai-tdm-slot-width", &be->slot_width);

 return 0;
}
