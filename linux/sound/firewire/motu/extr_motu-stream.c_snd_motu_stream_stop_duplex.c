
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_motu {scalar_t__ substreams_counter; int rx_resources; int tx_resources; int domain; } ;


 int amdtp_domain_stop (int *) ;
 int finish_session (struct snd_motu*) ;
 int fw_iso_resources_free (int *) ;

void snd_motu_stream_stop_duplex(struct snd_motu *motu)
{
 if (motu->substreams_counter == 0) {
  amdtp_domain_stop(&motu->domain);
  finish_session(motu);

  fw_iso_resources_free(&motu->tx_resources);
  fw_iso_resources_free(&motu->rx_resources);
 }
}
