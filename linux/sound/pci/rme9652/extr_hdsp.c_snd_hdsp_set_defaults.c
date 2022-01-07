
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {int control_register; int control2_register; scalar_t__ io_type; int * mixer_matrix; } ;


 int EIO ;
 scalar_t__ H9632 ;
 scalar_t__ H9652 ;
 int HDSP_ADGainPlus4dBu ;
 int HDSP_BIGENDIAN_MODE ;
 int HDSP_ClockModeMaster ;
 int HDSP_DAGainPlus4dBu ;
 int HDSP_LineOut ;
 unsigned int HDSP_MATRIX_MIXER_SIZE ;
 int HDSP_PhoneGain0dB ;
 int HDSP_SPDIFInputCoaxial ;
 int HDSP_control2Reg ;
 int HDSP_controlRegister ;
 int MINUS_INFINITY_GAIN ;
 int hdsp_compute_period_size (struct hdsp*) ;
 int hdsp_encode_latency (int) ;
 int hdsp_reset_hw_pointer (struct hdsp*) ;
 int hdsp_set_rate (struct hdsp*,int,int) ;
 int hdsp_write (struct hdsp*,int ,int) ;
 scalar_t__ hdsp_write_gain (struct hdsp*,unsigned int,int ) ;
 int snd_hdsp_9652_enable_mixer (struct hdsp*) ;

__attribute__((used)) static int snd_hdsp_set_defaults(struct hdsp *hdsp)
{
 unsigned int i;
 hdsp->control_register = HDSP_ClockModeMaster |
                   HDSP_SPDIFInputCoaxial |
                   hdsp_encode_latency(7) |
                   HDSP_LineOut;


 hdsp_write(hdsp, HDSP_controlRegister, hdsp->control_register);




 hdsp->control2_register = 0;

 if (hdsp->io_type == H9652)
         snd_hdsp_9652_enable_mixer (hdsp);
 else
  hdsp_write (hdsp, HDSP_control2Reg, hdsp->control2_register);

 hdsp_reset_hw_pointer(hdsp);
 hdsp_compute_period_size(hdsp);



 for (i = 0; i < HDSP_MATRIX_MIXER_SIZE; ++i)
  hdsp->mixer_matrix[i] = MINUS_INFINITY_GAIN;

 for (i = 0; i < ((hdsp->io_type == H9652 || hdsp->io_type == H9632) ? 1352 : HDSP_MATRIX_MIXER_SIZE); ++i) {
  if (hdsp_write_gain (hdsp, i, MINUS_INFINITY_GAIN))
   return -EIO;
 }


 if (hdsp->io_type == H9632) {
  hdsp->control_register |= (HDSP_DAGainPlus4dBu | HDSP_ADGainPlus4dBu | HDSP_PhoneGain0dB);
  hdsp_write(hdsp, HDSP_controlRegister, hdsp->control_register);
 }




 hdsp_set_rate(hdsp, 48000, 1);

 return 0;
}
