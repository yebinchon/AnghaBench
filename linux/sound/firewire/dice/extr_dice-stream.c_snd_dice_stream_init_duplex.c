
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dice {int domain; } ;


 int AMDTP_IN_STREAM ;
 int AMDTP_OUT_STREAM ;
 int MAX_STREAMS ;
 int amdtp_domain_init (int *) ;
 int destroy_stream (struct snd_dice*,int ,int) ;
 int init_stream (struct snd_dice*,int ,int) ;

int snd_dice_stream_init_duplex(struct snd_dice *dice)
{
 int i, err;

 for (i = 0; i < MAX_STREAMS; i++) {
  err = init_stream(dice, AMDTP_IN_STREAM, i);
  if (err < 0) {
   for (; i >= 0; i--)
    destroy_stream(dice, AMDTP_IN_STREAM, i);
   goto end;
  }
 }

 for (i = 0; i < MAX_STREAMS; i++) {
  err = init_stream(dice, AMDTP_OUT_STREAM, i);
  if (err < 0) {
   for (; i >= 0; i--)
    destroy_stream(dice, AMDTP_OUT_STREAM, i);
   for (i = 0; i < MAX_STREAMS; i++)
    destroy_stream(dice, AMDTP_IN_STREAM, i);
   goto end;
  }
 }

 err = amdtp_domain_init(&dice->domain);
 if (err < 0) {
  for (i = 0; i < MAX_STREAMS; ++i) {
   destroy_stream(dice, AMDTP_OUT_STREAM, i);
   destroy_stream(dice, AMDTP_IN_STREAM, i);
  }
 }
end:
 return err;
}
