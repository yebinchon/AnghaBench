
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dice {int dummy; } ;
struct reg_params {int dummy; } ;


 int AMDTP_IN_STREAM ;
 int AMDTP_OUT_STREAM ;
 int snd_dice_transaction_clear_enable (struct snd_dice*) ;
 int stop_streams (struct snd_dice*,int ,struct reg_params*) ;

__attribute__((used)) static void finish_session(struct snd_dice *dice, struct reg_params *tx_params,
      struct reg_params *rx_params)
{
 stop_streams(dice, AMDTP_IN_STREAM, tx_params);
 stop_streams(dice, AMDTP_OUT_STREAM, rx_params);

 snd_dice_transaction_clear_enable(dice);
}
