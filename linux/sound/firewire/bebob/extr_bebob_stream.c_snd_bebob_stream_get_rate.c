
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_bebob {int unit; } ;


 int AVC_GENERAL_PLUG_DIR_IN ;
 int AVC_GENERAL_PLUG_DIR_OUT ;
 int EAGAIN ;
 int avc_general_get_sig_fmt (int ,unsigned int*,int ,int ) ;
 int avc_general_set_sig_fmt (int ,unsigned int,int ,int ) ;

int
snd_bebob_stream_get_rate(struct snd_bebob *bebob, unsigned int *curr_rate)
{
 unsigned int tx_rate, rx_rate, trials;
 int err;

 trials = 0;
 do {
  err = avc_general_get_sig_fmt(bebob->unit, &tx_rate,
           AVC_GENERAL_PLUG_DIR_OUT, 0);
 } while (err == -EAGAIN && ++trials < 3);
 if (err < 0)
  goto end;

 trials = 0;
 do {
  err = avc_general_get_sig_fmt(bebob->unit, &rx_rate,
           AVC_GENERAL_PLUG_DIR_IN, 0);
 } while (err == -EAGAIN && ++trials < 3);
 if (err < 0)
  goto end;

 *curr_rate = rx_rate;
 if (rx_rate == tx_rate)
  goto end;


 err = avc_general_set_sig_fmt(bebob->unit, rx_rate,
          AVC_GENERAL_PLUG_DIR_IN, 0);
end:
 return err;
}
