
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct azx {int driver_caps; TYPE_1__* card; int pci; } ;
struct TYPE_2__ {int dev; } ;


 int ATI_SB450_HDAUDIO_ENABLE_SNOOP ;
 int ATI_SB450_HDAUDIO_MISC_CNTR2_ADDR ;
 int AZX_DCAPS_NO_TCSEL ;
 int AZX_PCIREG_TCSEL ;
 int AZX_SNOOP_TYPE_ATI ;
 int AZX_SNOOP_TYPE_NVIDIA ;
 int AZX_SNOOP_TYPE_SCH ;
 int INTEL_SCH_HDA_DEVC ;
 unsigned short INTEL_SCH_HDA_DEVC_NOSNOOP ;
 int NVIDIA_HDA_ENABLE_COHBIT ;
 int NVIDIA_HDA_ENABLE_COHBITS ;
 int NVIDIA_HDA_ISTRM_COH ;
 int NVIDIA_HDA_OSTRM_COH ;
 int NVIDIA_HDA_TRANSREG_ADDR ;
 int azx_get_snoop_type (struct azx*) ;
 char* azx_snoop (struct azx*) ;
 int dev_dbg (int ,char*,...) ;
 int pci_read_config_word (int ,int ,unsigned short*) ;
 int pci_write_config_word (int ,int ,unsigned short) ;
 int update_pci_byte (int ,int ,int,int ) ;

__attribute__((used)) static void azx_init_pci(struct azx *chip)
{
 int snoop_type = azx_get_snoop_type(chip);







 if (!(chip->driver_caps & AZX_DCAPS_NO_TCSEL)) {
  dev_dbg(chip->card->dev, "Clearing TCSEL\n");
  update_pci_byte(chip->pci, AZX_PCIREG_TCSEL, 0x07, 0);
 }




 if (snoop_type == AZX_SNOOP_TYPE_ATI) {
  dev_dbg(chip->card->dev, "Setting ATI snoop: %d\n",
   azx_snoop(chip));
  update_pci_byte(chip->pci,
    ATI_SB450_HDAUDIO_MISC_CNTR2_ADDR, 0x07,
    azx_snoop(chip) ? ATI_SB450_HDAUDIO_ENABLE_SNOOP : 0);
 }


 if (snoop_type == AZX_SNOOP_TYPE_NVIDIA) {
  dev_dbg(chip->card->dev, "Setting Nvidia snoop: %d\n",
   azx_snoop(chip));
  update_pci_byte(chip->pci,
    NVIDIA_HDA_TRANSREG_ADDR,
    0x0f, NVIDIA_HDA_ENABLE_COHBITS);
  update_pci_byte(chip->pci,
    NVIDIA_HDA_ISTRM_COH,
    0x01, NVIDIA_HDA_ENABLE_COHBIT);
  update_pci_byte(chip->pci,
    NVIDIA_HDA_OSTRM_COH,
    0x01, NVIDIA_HDA_ENABLE_COHBIT);
 }


 if (snoop_type == AZX_SNOOP_TYPE_SCH) {
  unsigned short snoop;
  pci_read_config_word(chip->pci, INTEL_SCH_HDA_DEVC, &snoop);
  if ((!azx_snoop(chip) && !(snoop & INTEL_SCH_HDA_DEVC_NOSNOOP)) ||
      (azx_snoop(chip) && (snoop & INTEL_SCH_HDA_DEVC_NOSNOOP))) {
   snoop &= ~INTEL_SCH_HDA_DEVC_NOSNOOP;
   if (!azx_snoop(chip))
    snoop |= INTEL_SCH_HDA_DEVC_NOSNOOP;
   pci_write_config_word(chip->pci, INTEL_SCH_HDA_DEVC, snoop);
   pci_read_config_word(chip->pci,
    INTEL_SCH_HDA_DEVC, &snoop);
  }
  dev_dbg(chip->card->dev, "SCH snoop: %s\n",
   (snoop & INTEL_SCH_HDA_DEVC_NOSNOOP) ?
   "Disabled" : "Enabled");
        }
}
