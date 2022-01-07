
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_emu10k1_midi {int dummy; } ;
struct snd_emu10k1 {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int ,char*,int ) ;
 scalar_t__ mpu401_input_avail (struct snd_emu10k1*,struct snd_emu10k1_midi*) ;
 int mpu401_read_data (struct snd_emu10k1*,struct snd_emu10k1_midi*) ;
 int mpu401_read_stat (struct snd_emu10k1*,struct snd_emu10k1_midi*) ;

__attribute__((used)) static void mpu401_clear_rx(struct snd_emu10k1 *emu, struct snd_emu10k1_midi *mpu)
{
 int timeout = 100000;
 for (; timeout > 0 && mpu401_input_avail(emu, mpu); timeout--)
  mpu401_read_data(emu, mpu);






}
