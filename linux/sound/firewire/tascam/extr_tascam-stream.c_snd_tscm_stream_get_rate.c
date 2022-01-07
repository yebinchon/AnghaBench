
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_tscm {int dummy; } ;


 int EAGAIN ;
 int get_clock (struct snd_tscm*,int*) ;

int snd_tscm_stream_get_rate(struct snd_tscm *tscm, unsigned int *rate)
{
 u32 data;
 int err;

 err = get_clock(tscm, &data);
 if (err < 0)
  return err;

 data = (data & 0xff000000) >> 24;


 if ((data & 0x0f) == 0x01)
  *rate = 44100;
 else if ((data & 0x0f) == 0x02)
  *rate = 48000;
 else
  return -EAGAIN;


 if ((data & 0xf0) == 0x80)
  *rate *= 2;
 else if ((data & 0xf0) != 0x00)
  return -EAGAIN;

 return err;
}
