
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 void __analog_low_current_mode (struct hda_codec*,int) ;

__attribute__((used)) static void analog_low_current_mode(struct hda_codec *codec)
{
 return __analog_low_current_mode(codec, 0);
}
