
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ addr; } ;
struct viadev {TYPE_1__ table; } ;
struct via82xx_modem {int ac97_secondary; } ;


 int OFFSET_TABLE_PTR ;
 int VIADEV_REG (struct viadev*,int ) ;
 int outl (int ,int ) ;
 int snd_via82xx_codec_ready (struct via82xx_modem*,int ) ;
 int udelay (int) ;

__attribute__((used)) static void snd_via82xx_set_table_ptr(struct via82xx_modem *chip, struct viadev *viadev)
{
 snd_via82xx_codec_ready(chip, chip->ac97_secondary);
 outl((u32)viadev->table.addr, VIADEV_REG(viadev, OFFSET_TABLE_PTR));
 udelay(20);
 snd_via82xx_codec_ready(chip, chip->ac97_secondary);
}
