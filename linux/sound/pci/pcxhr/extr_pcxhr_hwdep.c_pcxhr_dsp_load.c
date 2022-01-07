
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcxhr {int card; int mgr; } ;
struct pcxhr_mgr {int num_cards; TYPE_1__* pci; struct snd_pcxhr** chip; } ;
struct firmware {int size; } ;
struct TYPE_2__ {int dev; } ;


 int EFAULT ;





 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*) ;
 int pcxhr_config_pipes (struct pcxhr_mgr*) ;
 int pcxhr_create_mixer (int ) ;
 int pcxhr_create_pcm (struct snd_pcxhr*) ;
 int pcxhr_init_board (struct pcxhr_mgr*) ;
 int pcxhr_load_boot_binary (struct pcxhr_mgr*,struct firmware const*) ;
 int pcxhr_load_dsp_binary (struct pcxhr_mgr*,struct firmware const*) ;
 int pcxhr_load_eeprom_binary (struct pcxhr_mgr*,struct firmware const*) ;
 int pcxhr_load_xilinx_binary (struct pcxhr_mgr*,struct firmware const*,int) ;
 int pcxhr_reset_dsp (struct pcxhr_mgr*) ;
 int pcxhr_reset_xilinx_com (struct pcxhr_mgr*) ;
 int pcxhr_start_pipes (struct pcxhr_mgr*) ;
 int snd_card_register (int ) ;

__attribute__((used)) static int pcxhr_dsp_load(struct pcxhr_mgr *mgr, int index,
     const struct firmware *dsp)
{
 int err, card_index;

 dev_dbg(&mgr->pci->dev,
  "loading dsp [%d] size = %zd\n", index, dsp->size);

 switch (index) {
 case 128:
  pcxhr_reset_xilinx_com(mgr);
  return pcxhr_load_xilinx_binary(mgr, dsp, 0);

 case 129:
  pcxhr_reset_xilinx_com(mgr);
  return pcxhr_load_xilinx_binary(mgr, dsp, 1);

 case 131:
  pcxhr_reset_dsp(mgr);
  return pcxhr_load_eeprom_binary(mgr, dsp);

 case 132:
  return pcxhr_load_boot_binary(mgr, dsp);

 case 130:
  err = pcxhr_load_dsp_binary(mgr, dsp);
  if (err)
   return err;
  break;
 default:
  dev_err(&mgr->pci->dev, "wrong file index\n");
  return -EFAULT;
 }


 err = pcxhr_init_board(mgr);
        if (err < 0) {
  dev_err(&mgr->pci->dev, "pcxhr could not be set up\n");
  return err;
 }
 err = pcxhr_config_pipes(mgr);
        if (err < 0) {
  dev_err(&mgr->pci->dev, "pcxhr pipes could not be set up\n");
  return err;
 }

        for (card_index = 0; card_index < mgr->num_cards; card_index++) {
  struct snd_pcxhr *chip = mgr->chip[card_index];

  if ((err = pcxhr_create_pcm(chip)) < 0)
   return err;

  if (card_index == 0) {
   if ((err = pcxhr_create_mixer(chip->mgr)) < 0)
    return err;
  }
  if ((err = snd_card_register(chip->card)) < 0)
   return err;
 }
 err = pcxhr_start_pipes(mgr);
        if (err < 0) {
  dev_err(&mgr->pci->dev, "pcxhr pipes could not be started\n");
  return err;
 }
 dev_dbg(&mgr->pci->dev,
  "pcxhr firmware downloaded and successfully set up\n");

 return 0;
}
