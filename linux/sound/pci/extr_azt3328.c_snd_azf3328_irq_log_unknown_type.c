
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct snd_azf3328 {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int ,char*,int ) ;

__attribute__((used)) static inline void
snd_azf3328_irq_log_unknown_type(struct snd_azf3328 *chip, u8 which)
{
 dev_dbg(chip->card->dev,
  "unknown IRQ type (%x) occurred, please report!\n",
  which);
}
