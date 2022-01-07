
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* soundbus_dev; } ;
struct tas {TYPE_1__ codec; } ;
struct aoa_codec {int dummy; } ;
struct TYPE_4__ {int (* detach_codec ) (TYPE_2__*,struct tas*) ;} ;


 struct tas* codec_to_tas (struct aoa_codec*) ;
 int stub1 (TYPE_2__*,struct tas*) ;

__attribute__((used)) static void tas_exit_codec(struct aoa_codec *codec)
{
 struct tas *tas = codec_to_tas(codec);

 if (!tas->codec.soundbus_dev)
  return;
 tas->codec.soundbus_dev->detach_codec(tas->codec.soundbus_dev, tas);
}
