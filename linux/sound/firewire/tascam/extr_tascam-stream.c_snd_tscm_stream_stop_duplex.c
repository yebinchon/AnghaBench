
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_tscm {scalar_t__ substreams_counter; int rx_resources; int tx_resources; int domain; } ;


 int amdtp_domain_stop (int *) ;
 int finish_session (struct snd_tscm*) ;
 int fw_iso_resources_free (int *) ;

void snd_tscm_stream_stop_duplex(struct snd_tscm *tscm)
{
 if (tscm->substreams_counter == 0) {
  amdtp_domain_stop(&tscm->domain);
  finish_session(tscm);

  fw_iso_resources_free(&tscm->tx_resources);
  fw_iso_resources_free(&tscm->rx_resources);
 }
}
