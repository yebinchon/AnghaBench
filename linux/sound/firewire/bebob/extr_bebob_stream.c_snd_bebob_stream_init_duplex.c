
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_bebob {int rx_stream; int tx_stream; int domain; } ;


 int amdtp_domain_init (int *) ;
 int destroy_stream (struct snd_bebob*,int *) ;
 int init_stream (struct snd_bebob*,int *) ;

int snd_bebob_stream_init_duplex(struct snd_bebob *bebob)
{
 int err;

 err = init_stream(bebob, &bebob->tx_stream);
 if (err < 0)
  return err;

 err = init_stream(bebob, &bebob->rx_stream);
 if (err < 0) {
  destroy_stream(bebob, &bebob->tx_stream);
  return err;
 }

 err = amdtp_domain_init(&bebob->domain);
 if (err < 0) {
  destroy_stream(bebob, &bebob->tx_stream);
  destroy_stream(bebob, &bebob->rx_stream);
 }

 return err;
}
