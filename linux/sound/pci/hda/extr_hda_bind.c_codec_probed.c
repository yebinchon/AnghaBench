
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {scalar_t__ preset; } ;


 scalar_t__ device_attach (int ) ;
 int hda_codec_dev (struct hda_codec*) ;

__attribute__((used)) static inline bool codec_probed(struct hda_codec *codec)
{
 return device_attach(hda_codec_dev(codec)) > 0 && codec->preset;
}
