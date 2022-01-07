
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dice {scalar_t__ substreams_counter; int domain; } ;
struct reg_params {int dummy; } ;


 int AMDTP_IN_STREAM ;
 int AMDTP_OUT_STREAM ;
 int amdtp_domain_stop (int *) ;
 int ensure_phase_lock (struct snd_dice*,unsigned int) ;
 int finish_session (struct snd_dice*,struct reg_params*,struct reg_params*) ;
 int get_register_params (struct snd_dice*,struct reg_params*,struct reg_params*) ;
 int keep_dual_resources (struct snd_dice*,unsigned int,int ,struct reg_params*) ;
 int release_resources (struct snd_dice*) ;
 int snd_dice_transaction_get_rate (struct snd_dice*,unsigned int*) ;

int snd_dice_stream_reserve_duplex(struct snd_dice *dice, unsigned int rate)
{
 unsigned int curr_rate;
 int err;


 err = snd_dice_transaction_get_rate(dice, &curr_rate);
 if (err < 0)
  return err;
 if (rate == 0)
  rate = curr_rate;

 if (dice->substreams_counter == 0 || curr_rate != rate) {
  struct reg_params tx_params, rx_params;

  amdtp_domain_stop(&dice->domain);

  err = get_register_params(dice, &tx_params, &rx_params);
  if (err < 0)
   return err;
  finish_session(dice, &tx_params, &rx_params);

  release_resources(dice);




  err = ensure_phase_lock(dice, rate);
  if (err < 0)
   return err;



  err = get_register_params(dice, &tx_params, &rx_params);
  if (err < 0)
   return err;

  err = keep_dual_resources(dice, rate, AMDTP_IN_STREAM,
       &tx_params);
  if (err < 0)
   goto error;

  err = keep_dual_resources(dice, rate, AMDTP_OUT_STREAM,
       &rx_params);
  if (err < 0)
   goto error;
 }

 return 0;
error:
 release_resources(dice);
 return err;
}
