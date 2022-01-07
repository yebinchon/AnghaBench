
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_bebob {int unit; } ;


 int AVC_GENERAL_PLUG_DIR_IN ;
 int AVC_GENERAL_PLUG_DIR_OUT ;
 int avc_general_set_sig_fmt (int ,unsigned int,int ,int ) ;
 int msleep (int) ;

int
snd_bebob_stream_set_rate(struct snd_bebob *bebob, unsigned int rate)
{
 int err;

 err = avc_general_set_sig_fmt(bebob->unit, rate,
          AVC_GENERAL_PLUG_DIR_OUT, 0);
 if (err < 0)
  goto end;

 err = avc_general_set_sig_fmt(bebob->unit, rate,
          AVC_GENERAL_PLUG_DIR_IN, 0);
 if (err < 0)
  goto end;





 msleep(300);
end:
 return err;
}
