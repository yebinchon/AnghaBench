
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int CONTROL_PARAM_STREAM_CONTROL ;
 int CONTROL_PARAM_STREAM_ID ;
 int chipio_set_control_param_no_mutex (struct hda_codec*,int ,int) ;

__attribute__((used)) static void chipio_set_stream_control(struct hda_codec *codec,
    int streamid, int enable)
{
 chipio_set_control_param_no_mutex(codec,
   CONTROL_PARAM_STREAM_ID, streamid);
 chipio_set_control_param_no_mutex(codec,
   CONTROL_PARAM_STREAM_CONTROL, enable);
}
