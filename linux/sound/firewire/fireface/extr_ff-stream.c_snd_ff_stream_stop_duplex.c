
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ff {scalar_t__ substreams_counter; int rx_resources; int tx_resources; int domain; } ;


 int amdtp_domain_stop (int *) ;
 int finish_session (struct snd_ff*) ;
 int fw_iso_resources_free (int *) ;

void snd_ff_stream_stop_duplex(struct snd_ff *ff)
{
 if (ff->substreams_counter == 0) {
  amdtp_domain_stop(&ff->domain);
  finish_session(ff);

  fw_iso_resources_free(&ff->tx_resources);
  fw_iso_resources_free(&ff->rx_resources);
 }
}
