
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_tscm {scalar_t__ substreams_counter; int tx_resources; int rx_stream; int tx_stream; int rx_resources; int domain; } ;


 int INT_MAX ;
 int amdtp_domain_stop (int *) ;
 int finish_session (struct snd_tscm*) ;
 int fw_iso_resources_free (int *) ;
 int keep_resources (struct snd_tscm*,unsigned int,int *) ;
 int set_clock (struct snd_tscm*,unsigned int,int ) ;
 int snd_tscm_stream_get_rate (struct snd_tscm*,unsigned int*) ;

int snd_tscm_stream_reserve_duplex(struct snd_tscm *tscm, unsigned int rate)
{
 unsigned int curr_rate;
 int err;

 err = snd_tscm_stream_get_rate(tscm, &curr_rate);
 if (err < 0)
  return err;

 if (tscm->substreams_counter == 0 || rate != curr_rate) {
  amdtp_domain_stop(&tscm->domain);

  finish_session(tscm);

  fw_iso_resources_free(&tscm->tx_resources);
  fw_iso_resources_free(&tscm->rx_resources);

  err = set_clock(tscm, rate, INT_MAX);
  if (err < 0)
   return err;

  err = keep_resources(tscm, rate, &tscm->tx_stream);
  if (err < 0)
   return err;

  err = keep_resources(tscm, rate, &tscm->rx_stream);
  if (err < 0) {
   fw_iso_resources_free(&tscm->tx_resources);
   return err;
  }
 }

 return 0;
}
