
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int dsp_reset (struct hda_codec*) ;
 scalar_t__ dspload_is_loaded (struct hda_codec*) ;

__attribute__((used)) static void ca0132_exit_chip(struct hda_codec *codec)
{


 if (dspload_is_loaded(codec))
  dsp_reset(codec);
}
