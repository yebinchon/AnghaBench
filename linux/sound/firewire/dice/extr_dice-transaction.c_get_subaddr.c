
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct snd_dice {int global_offset; int rsrv_offset; int sync_offset; int rx_offset; int tx_offset; } ;
typedef enum snd_dice_addr_type { ____Placeholder_snd_dice_addr_type } snd_dice_addr_type ;


 scalar_t__ DICE_PRIVATE_SPACE ;






__attribute__((used)) static u64 get_subaddr(struct snd_dice *dice, enum snd_dice_addr_type type,
         u64 offset)
{
 switch (type) {
 case 128:
  offset += dice->tx_offset;
  break;
 case 130:
  offset += dice->rx_offset;
  break;
 case 129:
  offset += dice->sync_offset;
  break;
 case 131:
  offset += dice->rsrv_offset;
  break;
 case 132:
 default:
  offset += dice->global_offset;
  break;
 }
 offset += DICE_PRIVATE_SPACE;
 return offset;
}
