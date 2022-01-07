
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_bebob {int unit; } ;


 int AVC_GENERAL_PLUG_DIR_IN ;
 int EAGAIN ;
 int avc_general_get_sig_fmt (int ,unsigned int*,int ,int ) ;

__attribute__((used)) static int special_get_rate(struct snd_bebob *bebob, unsigned int *rate)
{
 int err, trials;

 trials = 0;
 do {
  err = avc_general_get_sig_fmt(bebob->unit, rate,
           AVC_GENERAL_PLUG_DIR_IN, 0);
 } while (err == -EAGAIN && ++trials < 3);

 return err;
}
