
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_card_asihpi {TYPE_3__* pci; int h_mixer; TYPE_2__* hpi; struct snd_card* card; } ;
struct snd_card {int mixername; } ;
struct hpi_control {int control_type; scalar_t__ src_node_type; scalar_t__ src_node_index; scalar_t__ dst_node_type; scalar_t__ dst_node_index; int h_control; } ;
typedef int prev_ctl ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {TYPE_1__* adapter; } ;
struct TYPE_4__ {int index; } ;


 int EINVAL ;
 scalar_t__ HPI_DESTNODE_NONE ;
 int HPI_ERROR_CONTROL_DISABLED ;
 int HPI_ERROR_INVALID_OBJ_INDEX ;
 scalar_t__ HPI_SOURCENODE_NONE ;
 int dev_info (int *,char*,unsigned int,...) ;
 int hpi_handle_error (int) ;
 int hpi_mixer_get_control_by_index (int ,unsigned int,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,int*,int *) ;
 int hpi_mixer_open (int ,int *) ;
 int memset (struct hpi_control*,int ,int) ;
 scalar_t__ mixer_dump ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_asihpi_aesebu_rx_add (struct snd_card_asihpi*,struct hpi_control*) ;
 int snd_asihpi_aesebu_tx_add (struct snd_card_asihpi*,struct hpi_control*) ;
 int snd_asihpi_cmode_add (struct snd_card_asihpi*,struct hpi_control*) ;
 int snd_asihpi_level_add (struct snd_card_asihpi*,struct hpi_control*) ;
 int snd_asihpi_meter_add (struct snd_card_asihpi*,struct hpi_control*,unsigned int) ;
 int snd_asihpi_mux_add (struct snd_card_asihpi*,struct hpi_control*) ;
 int snd_asihpi_sampleclock_add (struct snd_card_asihpi*,struct hpi_control*) ;
 int snd_asihpi_tuner_add (struct snd_card_asihpi*,struct hpi_control*) ;
 int snd_asihpi_volume_add (struct snd_card_asihpi*,struct hpi_control*) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int snd_card_asihpi_mixer_new(struct snd_card_asihpi *asihpi)
{
 struct snd_card *card;
 unsigned int idx = 0;
 unsigned int subindex = 0;
 int err;
 struct hpi_control hpi_ctl, prev_ctl;

 if (snd_BUG_ON(!asihpi))
  return -EINVAL;
 card = asihpi->card;
 strcpy(card->mixername, "Asihpi Mixer");

 err =
     hpi_mixer_open(asihpi->hpi->adapter->index,
     &asihpi->h_mixer);
 hpi_handle_error(err);
 if (err)
  return -err;

 memset(&prev_ctl, 0, sizeof(prev_ctl));
 prev_ctl.control_type = -1;

 for (idx = 0; idx < 2000; idx++) {
  err = hpi_mixer_get_control_by_index(
    asihpi->h_mixer,
    idx,
    &hpi_ctl.src_node_type,
    &hpi_ctl.src_node_index,
    &hpi_ctl.dst_node_type,
    &hpi_ctl.dst_node_index,
    &hpi_ctl.control_type,
    &hpi_ctl.h_control);
  if (err) {
   if (err == HPI_ERROR_CONTROL_DISABLED) {
    if (mixer_dump)
     dev_info(&asihpi->pci->dev,
         "Disabled HPI Control(%d)\n",
         idx);
    continue;
   } else
    break;

  }

  hpi_ctl.src_node_type -= HPI_SOURCENODE_NONE;
  hpi_ctl.dst_node_type -= HPI_DESTNODE_NONE;





  if ((hpi_ctl.control_type == prev_ctl.control_type) &&
      (hpi_ctl.src_node_type == prev_ctl.src_node_type) &&
      (hpi_ctl.src_node_index == prev_ctl.src_node_index) &&
      (hpi_ctl.dst_node_type == prev_ctl.dst_node_type) &&
      (hpi_ctl.dst_node_index == prev_ctl.dst_node_index))
   subindex++;
  else
   subindex = 0;

  prev_ctl = hpi_ctl;

  switch (hpi_ctl.control_type) {
  case 129:
   err = snd_asihpi_volume_add(asihpi, &hpi_ctl);
   break;
  case 136:
   err = snd_asihpi_level_add(asihpi, &hpi_ctl);
   break;
  case 133:
   err = snd_asihpi_mux_add(asihpi, &hpi_ctl);
   break;
  case 139:
   err = snd_asihpi_cmode_add(asihpi, &hpi_ctl);
   break;
  case 135:
   err = snd_asihpi_meter_add(asihpi, &hpi_ctl, subindex);
   break;
  case 131:
   err = snd_asihpi_sampleclock_add(
      asihpi, &hpi_ctl);
   break;
  case 137:
   continue;
  case 130:
   err = snd_asihpi_tuner_add(asihpi, &hpi_ctl);
   break;
  case 141:
   err = snd_asihpi_aesebu_tx_add(asihpi, &hpi_ctl);
   break;
  case 142:
   err = snd_asihpi_aesebu_rx_add(asihpi, &hpi_ctl);
   break;
  case 128:
  case 140:
  case 134:
  case 132:
  case 138:
  default:
   if (mixer_dump)
    dev_info(&asihpi->pci->dev,
     "Untranslated HPI Control (%d) %d %d %d %d %d\n",
     idx,
     hpi_ctl.control_type,
     hpi_ctl.src_node_type,
     hpi_ctl.src_node_index,
     hpi_ctl.dst_node_type,
     hpi_ctl.dst_node_index);
   continue;
  }
  if (err < 0)
   return err;
 }
 if (HPI_ERROR_INVALID_OBJ_INDEX != err)
  hpi_handle_error(err);

 dev_info(&asihpi->pci->dev, "%d mixer controls found\n", idx);

 return 0;
}
