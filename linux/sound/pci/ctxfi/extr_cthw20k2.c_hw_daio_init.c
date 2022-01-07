
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hw {scalar_t__ model; TYPE_1__* card; } ;
struct daio_conf {int msr; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ AUDIO_IO_MCLK ;
 scalar_t__ AUDIO_IO_RX_BLRCLK ;
 scalar_t__ AUDIO_IO_RX_CTL ;
 scalar_t__ AUDIO_IO_TX_BLRCLK ;
 scalar_t__ AUDIO_IO_TX_CSTAT_H ;
 scalar_t__ AUDIO_IO_TX_CSTAT_L ;
 scalar_t__ AUDIO_IO_TX_CTL ;
 scalar_t__ CTSB1270 ;
 int EINVAL ;
 int dev_alert (int ,char*) ;
 int hw_write_20kx (struct hw*,scalar_t__,int) ;

__attribute__((used)) static int hw_daio_init(struct hw *hw, const struct daio_conf *info)
{
 u32 data;
 int i;



 if (1 == info->msr) {
  hw_write_20kx(hw, AUDIO_IO_MCLK, 0x01010101);
  hw_write_20kx(hw, AUDIO_IO_TX_BLRCLK, 0x01010101);
  hw_write_20kx(hw, AUDIO_IO_RX_BLRCLK, 0);
 } else if (2 == info->msr) {
  if (hw->model != CTSB1270) {
   hw_write_20kx(hw, AUDIO_IO_MCLK, 0x11111111);
  } else {

   hw_write_20kx(hw, AUDIO_IO_MCLK, 0x11011111);
  }
  hw_write_20kx(hw, AUDIO_IO_TX_BLRCLK, 0x11111111);
  hw_write_20kx(hw, AUDIO_IO_RX_BLRCLK, 0);
 } else if ((4 == info->msr) && (hw->model == CTSB1270)) {
  hw_write_20kx(hw, AUDIO_IO_MCLK, 0x21011111);
  hw_write_20kx(hw, AUDIO_IO_TX_BLRCLK, 0x21212121);
  hw_write_20kx(hw, AUDIO_IO_RX_BLRCLK, 0);
 } else {
  dev_alert(hw->card->dev,
     "ERROR!!! Invalid sampling rate!!!\n");
  return -EINVAL;
 }

 for (i = 0; i < 8; i++) {
  if (i <= 3) {



   if (i == 3)
    data = 0x1001001;
   else
    data = 0x1000001;

   hw_write_20kx(hw, (AUDIO_IO_TX_CTL+(0x40*i)), data);
   hw_write_20kx(hw, (AUDIO_IO_RX_CTL+(0x40*i)), data);
   hw_write_20kx(hw, AUDIO_IO_TX_CSTAT_L+(0x40*i),
     0x02109204);

   hw_write_20kx(hw, AUDIO_IO_TX_CSTAT_H+(0x40*i), 0x0B);
  } else {


   data = 0x11;
   hw_write_20kx(hw, AUDIO_IO_RX_CTL+(0x40*i), data);
   if (2 == info->msr) {

    data |= 0x1000;
   } else if (4 == info->msr) {

    data |= 0x2000;
   }
   hw_write_20kx(hw, AUDIO_IO_TX_CTL+(0x40*i), data);
  }
 }

 return 0;
}
