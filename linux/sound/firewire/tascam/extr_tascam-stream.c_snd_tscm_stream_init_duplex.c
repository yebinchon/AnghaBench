
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_tscm {int rx_stream; int tx_stream; int domain; } ;


 int amdtp_domain_init (int *) ;
 int destroy_stream (struct snd_tscm*,int *) ;
 int init_stream (struct snd_tscm*,int *) ;

int snd_tscm_stream_init_duplex(struct snd_tscm *tscm)
{
 int err;

 err = init_stream(tscm, &tscm->tx_stream);
 if (err < 0)
  return err;

 err = init_stream(tscm, &tscm->rx_stream);
 if (err < 0) {
  destroy_stream(tscm, &tscm->tx_stream);
  return err;
 }

 err = amdtp_domain_init(&tscm->domain);
 if (err < 0) {
  destroy_stream(tscm, &tscm->tx_stream);
  destroy_stream(tscm, &tscm->rx_stream);
 }

 return err;
}
