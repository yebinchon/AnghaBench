
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_aw2_saa7146 {int dummy; } ;


 int PCI_ADP1 ;
 int PCI_ADP3 ;
 long READREG (int ) ;

unsigned int snd_aw2_saa7146_get_hw_ptr_playback(struct snd_aw2_saa7146 *chip,
       int stream_number,
       unsigned char *start_addr,
       unsigned int buffer_size)
{
 long pci_adp = 0;
 size_t ptr = 0;

 if (stream_number == 0) {
  pci_adp = READREG(PCI_ADP3);
  ptr = pci_adp - (long)start_addr;

  if (ptr == buffer_size)
   ptr = 0;
 }
 if (stream_number == 1) {
  pci_adp = READREG(PCI_ADP1);
  ptr = pci_adp - (size_t) start_addr;

  if (ptr == buffer_size)
   ptr = 0;
 }
 return ptr;
}
