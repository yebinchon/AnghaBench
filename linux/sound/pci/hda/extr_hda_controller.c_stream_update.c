
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hdac_stream {int dummy; } ;
struct hdac_bus {int reg_lock; } ;
struct azx_dev {int dummy; } ;
struct azx {TYPE_1__* ops; } ;
struct TYPE_4__ {int substream; } ;
struct TYPE_3__ {scalar_t__ (* position_check ) (struct azx*,struct azx_dev*) ;} ;


 TYPE_2__* azx_stream (struct azx_dev*) ;
 struct azx* bus_to_azx (struct hdac_bus*) ;
 int snd_pcm_period_elapsed (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct azx_dev* stream_to_azx_dev (struct hdac_stream*) ;
 scalar_t__ stub1 (struct azx*,struct azx_dev*) ;

__attribute__((used)) static void stream_update(struct hdac_bus *bus, struct hdac_stream *s)
{
 struct azx *chip = bus_to_azx(bus);
 struct azx_dev *azx_dev = stream_to_azx_dev(s);


 if (!chip->ops->position_check ||
     chip->ops->position_check(chip, azx_dev)) {
  spin_unlock(&bus->reg_lock);
  snd_pcm_period_elapsed(azx_stream(azx_dev)->substream);
  spin_lock(&bus->reg_lock);
 }
}
