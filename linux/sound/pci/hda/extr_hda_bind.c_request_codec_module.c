
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int probe_id; int core; } ;
typedef int modalias ;




 int request_module (char const*) ;
 int snd_hdac_codec_modalias (int *,char*,int) ;

__attribute__((used)) static void request_codec_module(struct hda_codec *codec)
{
}
