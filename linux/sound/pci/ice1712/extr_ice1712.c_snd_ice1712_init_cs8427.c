
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int setup_rate; int close; int open; } ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct snd_ice1712 {int cs8427_timeout; TYPE_3__ spdif; TYPE_1__* card; int cs8427; int i2c; } ;
struct TYPE_4__ {int dev; } ;


 int HZ ;
 int close_cs8427 ;
 int dev_err (int ,char*) ;
 int open_cs8427 ;
 int setup_cs8427 ;
 int snd_cs8427_create (int ,int,int,int *) ;

int snd_ice1712_init_cs8427(struct snd_ice1712 *ice, int addr)
{
 int err;

 err = snd_cs8427_create(ice->i2c, addr,
  (ice->cs8427_timeout * HZ) / 1000, &ice->cs8427);
 if (err < 0) {
  dev_err(ice->card->dev, "CS8427 initialization failed\n");
  return err;
 }
 ice->spdif.ops.open = open_cs8427;
 ice->spdif.ops.close = close_cs8427;
 ice->spdif.ops.setup_rate = setup_cs8427;
 return 0;
}
