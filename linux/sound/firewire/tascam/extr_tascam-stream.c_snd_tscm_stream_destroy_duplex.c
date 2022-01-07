
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_tscm {int tx_stream; int rx_stream; int domain; } ;


 int amdtp_domain_destroy (int *) ;
 int destroy_stream (struct snd_tscm*,int *) ;

void snd_tscm_stream_destroy_duplex(struct snd_tscm *tscm)
{
 amdtp_domain_destroy(&tscm->domain);

 destroy_stream(tscm, &tscm->rx_stream);
 destroy_stream(tscm, &tscm->tx_stream);
}
