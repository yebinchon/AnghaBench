
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;

__attribute__((used)) static int snd_soc_xlate_tdm_slot_mask(unsigned int slots,
           unsigned int *tx_mask,
           unsigned int *rx_mask)
{
 if (*tx_mask || *rx_mask)
  return 0;

 if (!slots)
  return -EINVAL;

 *tx_mask = (1 << slots) - 1;
 *rx_mask = (1 << slots) - 1;

 return 0;
}
