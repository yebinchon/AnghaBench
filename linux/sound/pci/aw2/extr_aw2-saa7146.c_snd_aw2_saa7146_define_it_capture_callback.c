
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ snd_aw2_saa7146_it_cb ;
struct TYPE_2__ {void* p_callback_param; scalar_t__ p_it_callback; } ;


 unsigned int NB_STREAM_CAPTURE ;
 TYPE_1__* arr_substream_it_capture_cb ;

void snd_aw2_saa7146_define_it_capture_callback(unsigned int stream_number,
      snd_aw2_saa7146_it_cb
      p_it_callback,
      void *p_callback_param)
{
 if (stream_number < NB_STREAM_CAPTURE) {
  arr_substream_it_capture_cb[stream_number].p_it_callback =
      (snd_aw2_saa7146_it_cb) p_it_callback;
  arr_substream_it_capture_cb[stream_number].p_callback_param =
      (void *)p_callback_param;
 }
}
