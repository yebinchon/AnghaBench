
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dg00x {scalar_t__ substreams_counter; int rx_resources; int tx_stream; int rx_stream; int tx_resources; int domain; } ;


 int amdtp_domain_stop (int *) ;
 int finish_session (struct snd_dg00x*) ;
 int fw_iso_resources_free (int *) ;
 int keep_resources (struct snd_dg00x*,int *,unsigned int) ;
 int snd_dg00x_stream_get_local_rate (struct snd_dg00x*,unsigned int*) ;
 int snd_dg00x_stream_set_local_rate (struct snd_dg00x*,unsigned int) ;

int snd_dg00x_stream_reserve_duplex(struct snd_dg00x *dg00x, unsigned int rate)
{
 unsigned int curr_rate;
 int err;

 err = snd_dg00x_stream_get_local_rate(dg00x, &curr_rate);
 if (err < 0)
  return err;
 if (rate == 0)
  rate = curr_rate;

 if (dg00x->substreams_counter == 0 || curr_rate != rate) {
  amdtp_domain_stop(&dg00x->domain);

  finish_session(dg00x);

  fw_iso_resources_free(&dg00x->tx_resources);
  fw_iso_resources_free(&dg00x->rx_resources);

  err = snd_dg00x_stream_set_local_rate(dg00x, rate);
  if (err < 0)
   return err;

  err = keep_resources(dg00x, &dg00x->rx_stream, rate);
  if (err < 0)
   return err;

  err = keep_resources(dg00x, &dg00x->tx_stream, rate);
  if (err < 0) {
   fw_iso_resources_free(&dg00x->rx_resources);
   return err;
  }
 }

 return 0;
}
