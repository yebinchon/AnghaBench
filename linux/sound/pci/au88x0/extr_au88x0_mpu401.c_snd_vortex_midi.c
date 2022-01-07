
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct snd_rawmidi* rmidi; TYPE_3__* card; scalar_t__ mmio; } ;
typedef TYPE_1__ vortex_t ;
struct snd_rawmidi {int name; struct snd_mpu401* private_data; } ;
struct snd_mpu401 {unsigned long cport; } ;
struct TYPE_5__ {int number; int dev; } ;


 char* CARD_NAME_SHORT ;
 unsigned long CTRL_MIDI_EN ;
 unsigned long CTRL_MIDI_PORT ;
 int ENODEV ;
 unsigned long IRQ_MIDI ;
 int MIDI_CLOCK_DIV ;
 int MPU401_ACK ;
 int MPU401_HW_AUREAL ;
 int MPU401_HW_MPU401 ;
 int MPU401_INFO_INTEGRATED ;
 int MPU401_INFO_IRQ_HOOK ;
 int MPU401_INFO_MMIO ;
 unsigned long MPU401_RESET ;
 scalar_t__ VORTEX_CTRL ;
 scalar_t__ VORTEX_CTRL2 ;
 scalar_t__ VORTEX_IRQ_CTRL ;
 scalar_t__ VORTEX_MIDI_CMD ;
 scalar_t__ VORTEX_MIDI_DATA ;
 int dev_err (int ,char*) ;
 unsigned long hwread (scalar_t__,scalar_t__) ;
 int hwwrite (scalar_t__,scalar_t__,unsigned long) ;
 int snd_mpu401_uart_new (TYPE_3__*,int ,int ,unsigned long,int,int,struct snd_rawmidi**) ;
 int snprintf (int ,int,char*,char*,int) ;

__attribute__((used)) static int snd_vortex_midi(vortex_t *vortex)
{
 struct snd_rawmidi *rmidi;
 int temp, mode;
 struct snd_mpu401 *mpu;
 unsigned long port;
 temp =
     (hwread(vortex->mmio, VORTEX_CTRL) & ~CTRL_MIDI_PORT) &
     ~CTRL_MIDI_EN;
 hwwrite(vortex->mmio, VORTEX_CTRL, temp);


 mode = 1;
 temp = hwread(vortex->mmio, VORTEX_CTRL2) & 0xffff00cf;
 temp |= (MIDI_CLOCK_DIV << 8) | ((mode >> 24) & 0xff) << 4;
 hwwrite(vortex->mmio, VORTEX_CTRL2, temp);
 hwwrite(vortex->mmio, VORTEX_MIDI_CMD, MPU401_RESET);


 temp = hwread(vortex->mmio, VORTEX_MIDI_DATA);
 if (temp != MPU401_ACK ) {
  dev_err(vortex->card->dev, "midi port doesn't acknowledge!\n");
  return -ENODEV;
 }

 hwwrite(vortex->mmio, VORTEX_IRQ_CTRL,
  hwread(vortex->mmio, VORTEX_IRQ_CTRL) | IRQ_MIDI);
 port = (unsigned long)(vortex->mmio + VORTEX_MIDI_DATA);
 if ((temp =
      snd_mpu401_uart_new(vortex->card, 0, MPU401_HW_AUREAL, port,
     MPU401_INFO_INTEGRATED | MPU401_INFO_MMIO |
     MPU401_INFO_IRQ_HOOK, -1, &rmidi)) != 0) {
  hwwrite(vortex->mmio, VORTEX_CTRL,
   (hwread(vortex->mmio, VORTEX_CTRL) &
    ~CTRL_MIDI_PORT) & ~CTRL_MIDI_EN);
  return temp;
 }
 mpu = rmidi->private_data;
 mpu->cport = (unsigned long)(vortex->mmio + VORTEX_MIDI_CMD);


 snprintf(rmidi->name, sizeof(rmidi->name), "%s MIDI %d", CARD_NAME_SHORT , vortex->card->number);

 vortex->rmidi = rmidi;
 return 0;
}
