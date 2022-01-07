
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_ac97 {int id; TYPE_1__* bus; } ;
struct TYPE_4__ {int (* read ) (struct snd_ac97*,int ) ;} ;
struct TYPE_3__ {TYPE_2__* ops; } ;


 int AC97_VENDOR_ID1 ;
 int AC97_VENDOR_ID2 ;
 int stub1 (struct snd_ac97*,int ) ;
 int stub2 (struct snd_ac97*,int ) ;

__attribute__((used)) static bool snd_ac97_check_id(struct snd_ac97 *ac97, unsigned int id,
 unsigned int id_mask)
{
 ac97->id = ac97->bus->ops->read(ac97, AC97_VENDOR_ID1) << 16;
 ac97->id |= ac97->bus->ops->read(ac97, AC97_VENDOR_ID2);

 if (ac97->id == 0x0 || ac97->id == 0xffffffff)
  return 0;

 if (id != 0 && id != (ac97->id & id_mask))
  return 0;

 return 1;
}
