
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef enum control_param_id { ____Placeholder_control_param_id } control_param_id ;


 int VENDOR_CHIPIO_PARAM_EX_ID_SET ;
 int VENDOR_CHIPIO_PARAM_EX_VALUE_SET ;
 int VENDOR_CHIPIO_PARAM_SET ;
 int VENDOR_CHIPIO_STATUS ;
 int WIDGET_CHIP_CTRL ;
 scalar_t__ chipio_send (struct hda_codec*,int ,int ) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,int) ;

__attribute__((used)) static void chipio_set_control_param_no_mutex(struct hda_codec *codec,
  enum control_param_id param_id, int param_val)
{
 int val;

 if ((param_id < 32) && (param_val < 8)) {
  val = (param_val << 5) | (param_id);
  snd_hda_codec_write(codec, WIDGET_CHIP_CTRL, 0,
        VENDOR_CHIPIO_PARAM_SET, val);
 } else {
  if (chipio_send(codec, VENDOR_CHIPIO_STATUS, 0) == 0) {
   snd_hda_codec_write(codec, WIDGET_CHIP_CTRL, 0,
         VENDOR_CHIPIO_PARAM_EX_ID_SET,
         param_id);
   snd_hda_codec_write(codec, WIDGET_CHIP_CTRL, 0,
         VENDOR_CHIPIO_PARAM_EX_VALUE_SET,
         param_val);
  }
 }
}
