
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dice {scalar_t__ substreams_counter; int domain; } ;
struct reg_params {int dummy; } ;


 int amdtp_domain_stop (int *) ;
 int finish_session (struct snd_dice*,struct reg_params*,struct reg_params*) ;
 scalar_t__ get_register_params (struct snd_dice*,struct reg_params*,struct reg_params*) ;
 int release_resources (struct snd_dice*) ;

void snd_dice_stream_stop_duplex(struct snd_dice *dice)
{
 struct reg_params tx_params, rx_params;

 if (dice->substreams_counter == 0) {
  if (get_register_params(dice, &tx_params, &rx_params) >= 0) {
   amdtp_domain_stop(&dice->domain);
   finish_session(dice, &tx_params, &rx_params);
  }

  release_resources(dice);
 }
}
