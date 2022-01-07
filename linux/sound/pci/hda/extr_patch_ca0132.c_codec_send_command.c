
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 unsigned int snd_hda_codec_read (struct hda_codec*,int ,int ,unsigned int,unsigned int) ;

__attribute__((used)) static unsigned int codec_send_command(struct hda_codec *codec, hda_nid_t nid,
  unsigned int verb, unsigned int parm, unsigned int *res)
{
 unsigned int response;
 response = snd_hda_codec_read(codec, nid, 0, verb, parm);
 *res = response;

 return ((response == -1) ? -1 : 0);
}
