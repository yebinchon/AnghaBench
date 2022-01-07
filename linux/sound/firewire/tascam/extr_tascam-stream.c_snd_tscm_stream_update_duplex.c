
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_tscm {int rx_stream; int tx_stream; int domain; } ;


 int amdtp_domain_stop (int *) ;
 int amdtp_stream_pcm_abort (int *) ;

void snd_tscm_stream_update_duplex(struct snd_tscm *tscm)
{
 amdtp_domain_stop(&tscm->domain);

 amdtp_stream_pcm_abort(&tscm->tx_stream);
 amdtp_stream_pcm_abort(&tscm->rx_stream);
}
