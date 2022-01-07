
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct emu10k1x_midi {int dummy; } ;
struct emu10k1x {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int ,char*,int ) ;
 scalar_t__ mpu401_input_avail (struct emu10k1x*,struct emu10k1x_midi*) ;
 int mpu401_read_data (struct emu10k1x*,struct emu10k1x_midi*) ;
 int mpu401_read_stat (struct emu10k1x*,struct emu10k1x_midi*) ;

__attribute__((used)) static void mpu401_clear_rx(struct emu10k1x *emu, struct emu10k1x_midi *mpu)
{
 int timeout = 100000;
 for (; timeout > 0 && mpu401_input_avail(emu, mpu); timeout--)
  mpu401_read_data(emu, mpu);






}
