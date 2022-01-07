
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dice {int global_enabled; int domain; } ;
struct reg_params {int dummy; } ;


 int AMDTP_IN_STREAM ;
 int AMDTP_OUT_STREAM ;
 int amdtp_domain_stop (int *) ;
 scalar_t__ get_register_params (struct snd_dice*,struct reg_params*,struct reg_params*) ;
 int stop_streams (struct snd_dice*,int ,struct reg_params*) ;

void snd_dice_stream_update_duplex(struct snd_dice *dice)
{
 struct reg_params tx_params, rx_params;
 dice->global_enabled = 0;

 if (get_register_params(dice, &tx_params, &rx_params) == 0) {
  amdtp_domain_stop(&dice->domain);

  stop_streams(dice, AMDTP_IN_STREAM, &tx_params);
  stop_streams(dice, AMDTP_OUT_STREAM, &rx_params);
 }
}
