
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_buffer {int dummy; } ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 unsigned int AC_AMPCAP_MUTE ;
 unsigned int AC_AMPCAP_MUTE_SHIFT ;
 unsigned int AC_AMPCAP_NUM_STEPS ;
 unsigned int AC_AMPCAP_NUM_STEPS_SHIFT ;
 unsigned int AC_AMPCAP_OFFSET ;
 unsigned int AC_AMPCAP_STEP_SIZE ;
 unsigned int AC_AMPCAP_STEP_SIZE_SHIFT ;
 int AC_PAR_AMP_IN_CAP ;
 int AC_PAR_AMP_OUT_CAP ;
 int HDA_OUTPUT ;
 unsigned int param_read (struct hda_codec*,int ,int ) ;
 int snd_iprintf (struct snd_info_buffer*,char*,...) ;

__attribute__((used)) static void print_amp_caps(struct snd_info_buffer *buffer,
      struct hda_codec *codec, hda_nid_t nid, int dir)
{
 unsigned int caps;
 caps = param_read(codec, nid, dir == HDA_OUTPUT ?
     AC_PAR_AMP_OUT_CAP : AC_PAR_AMP_IN_CAP);
 if (caps == -1 || caps == 0) {
  snd_iprintf(buffer, "N/A\n");
  return;
 }
 snd_iprintf(buffer, "ofs=0x%02x, nsteps=0x%02x, stepsize=0x%02x, "
      "mute=%x\n",
      caps & AC_AMPCAP_OFFSET,
      (caps & AC_AMPCAP_NUM_STEPS) >> AC_AMPCAP_NUM_STEPS_SHIFT,
      (caps & AC_AMPCAP_STEP_SIZE) >> AC_AMPCAP_STEP_SIZE_SHIFT,
      (caps & AC_AMPCAP_MUTE) >> AC_AMPCAP_MUTE_SHIFT);
}
