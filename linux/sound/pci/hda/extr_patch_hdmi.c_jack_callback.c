
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_jack_callback {int nid; } ;
struct hda_codec {int dummy; } ;


 int check_presence_and_report (struct hda_codec*,int ,int ) ;
 scalar_t__ codec_has_acomp (struct hda_codec*) ;

__attribute__((used)) static void jack_callback(struct hda_codec *codec,
     struct hda_jack_callback *jack)
{

 if (codec_has_acomp(codec))
  return;


 check_presence_and_report(codec, jack->nid, 0);
}
