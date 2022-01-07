
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_aw2_saa7146 {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int p_callback_param; int (* p_it_callback ) (int ) ;} ;
struct TYPE_3__ {int p_callback_param; int (* p_it_callback ) (int ) ;} ;


 unsigned int A1_in ;
 unsigned int A1_out ;
 unsigned int A2_out ;
 int IICSTA ;
 unsigned int IIC_E ;
 unsigned int IIC_S ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int ISR ;
 unsigned int READREG (int ) ;
 int WRITEREG (int,int ) ;
 TYPE_2__* arr_substream_it_capture_cb ;
 TYPE_1__* arr_substream_it_playback_cb ;
 int stub1 (int ) ;
 int stub2 (int ) ;
 int stub3 (int ) ;

irqreturn_t snd_aw2_saa7146_interrupt(int irq, void *dev_id)
{
 unsigned int isr;
 unsigned int iicsta;
 struct snd_aw2_saa7146 *chip = dev_id;

 isr = READREG(ISR);
 if (!isr)
  return IRQ_NONE;

 WRITEREG(isr, ISR);

 if (isr & (IIC_S | IIC_E)) {
  iicsta = READREG(IICSTA);
  WRITEREG(0x100, IICSTA);
 }

 if (isr & A1_out) {
  if (arr_substream_it_playback_cb[1].p_it_callback != ((void*)0)) {
   arr_substream_it_playback_cb[1].
       p_it_callback(arr_substream_it_playback_cb[1].
       p_callback_param);
  }
 }
 if (isr & A2_out) {
  if (arr_substream_it_playback_cb[0].p_it_callback != ((void*)0)) {
   arr_substream_it_playback_cb[0].
       p_it_callback(arr_substream_it_playback_cb[0].
       p_callback_param);
  }

 }
 if (isr & A1_in) {
  if (arr_substream_it_capture_cb[0].p_it_callback != ((void*)0)) {
   arr_substream_it_capture_cb[0].
       p_it_callback(arr_substream_it_capture_cb[0].
       p_callback_param);
  }
 }
 return IRQ_HANDLED;
}
