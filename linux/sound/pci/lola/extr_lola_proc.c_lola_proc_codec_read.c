
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_info_entry {struct lola* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct lola {int lola_caps; TYPE_2__* pin; TYPE_1__* pcm; } ;
struct TYPE_4__ {int num_pins; } ;
struct TYPE_3__ {int num_streams; } ;


 size_t CAPT ;
 scalar_t__ LOLA_AFG_CLOCK_WIDGET_PRESENT (int ) ;
 scalar_t__ LOLA_AFG_MIXER_WIDGET_PRESENT (int ) ;
 int LOLA_PAR_AMP_IN_CAP ;
 int LOLA_PAR_AMP_OUT_CAP ;
 int LOLA_PAR_FUNCTION_TYPE ;
 int LOLA_PAR_SPECIFIC_CAPS ;
 int LOLA_PAR_VENDOR_ID ;
 size_t PLAY ;
 int lola_read_param (struct lola*,int,int ,unsigned int*) ;
 int print_audio_widget (struct snd_info_buffer*,struct lola*,int,char*) ;
 int print_clock_widget (struct snd_info_buffer*,struct lola*,int) ;
 int print_mixer_widget (struct snd_info_buffer*,struct lola*,int) ;
 int print_pin_widget (struct snd_info_buffer*,struct lola*,int,int ,char*) ;
 int snd_iprintf (struct snd_info_buffer*,char*,int,...) ;

__attribute__((used)) static void lola_proc_codec_read(struct snd_info_entry *entry,
     struct snd_info_buffer *buffer)
{
 struct lola *chip = entry->private_data;
 unsigned int val;
 int i, nid;

 lola_read_param(chip, 0, LOLA_PAR_VENDOR_ID, &val);
 snd_iprintf(buffer, "Vendor: 0x%08x\n", val);
 lola_read_param(chip, 1, LOLA_PAR_FUNCTION_TYPE, &val);
 snd_iprintf(buffer, "Function Type: %d\n", val);
 lola_read_param(chip, 1, LOLA_PAR_SPECIFIC_CAPS, &val);
 snd_iprintf(buffer, "Specific-Caps: 0x%08x\n", val);
 snd_iprintf(buffer, "  Pins-In %d, Pins-Out %d\n",
      chip->pin[CAPT].num_pins, chip->pin[PLAY].num_pins);
 nid = 2;
 for (i = 0; i < chip->pcm[CAPT].num_streams; i++, nid++)
  print_audio_widget(buffer, chip, nid, "[Audio-In]");
 for (i = 0; i < chip->pcm[PLAY].num_streams; i++, nid++)
  print_audio_widget(buffer, chip, nid, "[Audio-Out]");
 for (i = 0; i < chip->pin[CAPT].num_pins; i++, nid++)
  print_pin_widget(buffer, chip, nid, LOLA_PAR_AMP_IN_CAP,
     "[Pin-In]");
 for (i = 0; i < chip->pin[PLAY].num_pins; i++, nid++)
  print_pin_widget(buffer, chip, nid, LOLA_PAR_AMP_OUT_CAP,
     "[Pin-Out]");
 if (LOLA_AFG_CLOCK_WIDGET_PRESENT(chip->lola_caps)) {
  print_clock_widget(buffer, chip, nid);
  nid++;
 }
 if (LOLA_AFG_MIXER_WIDGET_PRESENT(chip->lola_caps)) {
  print_mixer_widget(buffer, chip, nid);
  nid++;
 }
}
