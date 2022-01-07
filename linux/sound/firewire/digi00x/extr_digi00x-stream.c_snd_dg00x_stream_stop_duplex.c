
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dg00x {scalar_t__ substreams_counter; int rx_resources; int tx_resources; int domain; } ;


 int amdtp_domain_stop (int *) ;
 int finish_session (struct snd_dg00x*) ;
 int fw_iso_resources_free (int *) ;

void snd_dg00x_stream_stop_duplex(struct snd_dg00x *dg00x)
{
 if (dg00x->substreams_counter == 0) {
  amdtp_domain_stop(&dg00x->domain);
  finish_session(dg00x);

  fw_iso_resources_free(&dg00x->tx_resources);
  fw_iso_resources_free(&dg00x->rx_resources);
 }
}
