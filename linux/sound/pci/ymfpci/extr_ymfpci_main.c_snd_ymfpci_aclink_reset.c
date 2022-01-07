
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;


 int PCIR_DSXG_CTRL ;
 int PCIR_DSXG_PWRCTRL1 ;
 int PCIR_DSXG_PWRCTRL2 ;
 int pci_read_config_byte (struct pci_dev*,int ,int*) ;
 int pci_write_config_byte (struct pci_dev*,int ,int) ;
 int pci_write_config_word (struct pci_dev*,int ,int ) ;

__attribute__((used)) static void snd_ymfpci_aclink_reset(struct pci_dev * pci)
{
 u8 cmd;

 pci_read_config_byte(pci, PCIR_DSXG_CTRL, &cmd);



  pci_write_config_byte(pci, PCIR_DSXG_CTRL, cmd & 0xfc);
  pci_write_config_byte(pci, PCIR_DSXG_CTRL, cmd | 0x03);
  pci_write_config_byte(pci, PCIR_DSXG_CTRL, cmd & 0xfc);
  pci_write_config_word(pci, PCIR_DSXG_PWRCTRL1, 0);
  pci_write_config_word(pci, PCIR_DSXG_PWRCTRL2, 0);



}
