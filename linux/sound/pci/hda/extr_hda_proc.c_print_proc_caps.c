
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_buffer {int dummy; } ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int AC_PAR_PROC_CAP ;
 unsigned int AC_PCAP_BENIGN ;
 unsigned int AC_PCAP_NUM_COEF ;
 unsigned int AC_PCAP_NUM_COEF_SHIFT ;
 int AC_VERB_GET_COEF_INDEX ;
 int AC_VERB_GET_PROC_COEF ;
 int AC_VERB_SET_COEF_INDEX ;
 int can_dump_coef (struct hda_codec*) ;
 unsigned int param_read (struct hda_codec*,int ,int ) ;
 unsigned int snd_hda_codec_read (struct hda_codec*,int ,int ,int ,int ) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,unsigned int) ;
 int snd_iprintf (struct snd_info_buffer*,char*,unsigned int,unsigned int) ;

__attribute__((used)) static void print_proc_caps(struct snd_info_buffer *buffer,
       struct hda_codec *codec, hda_nid_t nid)
{
 unsigned int i, ncoeff, oldindex;
 unsigned int proc_caps = param_read(codec, nid, AC_PAR_PROC_CAP);
 ncoeff = (proc_caps & AC_PCAP_NUM_COEF) >> AC_PCAP_NUM_COEF_SHIFT;
 snd_iprintf(buffer, "  Processing caps: benign=%d, ncoeff=%d\n",
      proc_caps & AC_PCAP_BENIGN, ncoeff);

 if (!can_dump_coef(codec))
  return;



 oldindex = snd_hda_codec_read(codec, nid, 0, AC_VERB_GET_COEF_INDEX, 0);
 for (i = 0; i < ncoeff; i++) {
  unsigned int val;
  snd_hda_codec_write(codec, nid, 0, AC_VERB_SET_COEF_INDEX, i);
  val = snd_hda_codec_read(codec, nid, 0, AC_VERB_GET_PROC_COEF,
      0);
  snd_iprintf(buffer, "    Coeff 0x%02x: 0x%04x\n", i, val);
 }
 snd_hda_codec_write(codec, nid, 0, AC_VERB_SET_COEF_INDEX, oldindex);
}
