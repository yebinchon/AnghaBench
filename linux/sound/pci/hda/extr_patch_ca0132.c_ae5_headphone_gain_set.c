
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_codec {int dummy; } ;
struct TYPE_2__ {int * vals; } ;


 TYPE_1__* ae5_headphone_gain_presets ;
 int ca0113_mmio_command_set (struct hda_codec*,int,int,int ) ;

__attribute__((used)) static int ae5_headphone_gain_set(struct hda_codec *codec, long val)
{
 unsigned int i;

 for (i = 0; i < 4; i++)
  ca0113_mmio_command_set(codec, 0x48, 0x11 + i,
    ae5_headphone_gain_presets[val].vals[i]);
 return 0;
}
