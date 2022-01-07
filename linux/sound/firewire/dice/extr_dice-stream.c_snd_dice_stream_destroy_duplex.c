
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dice {int domain; } ;


 int AMDTP_IN_STREAM ;
 int AMDTP_OUT_STREAM ;
 unsigned int MAX_STREAMS ;
 int amdtp_domain_destroy (int *) ;
 int destroy_stream (struct snd_dice*,int ,unsigned int) ;

void snd_dice_stream_destroy_duplex(struct snd_dice *dice)
{
 unsigned int i;

 for (i = 0; i < MAX_STREAMS; i++) {
  destroy_stream(dice, AMDTP_IN_STREAM, i);
  destroy_stream(dice, AMDTP_OUT_STREAM, i);
 }

 amdtp_domain_destroy(&dice->domain);
}
