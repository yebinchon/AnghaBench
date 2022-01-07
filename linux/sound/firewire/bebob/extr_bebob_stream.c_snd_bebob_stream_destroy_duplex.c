
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_bebob {int rx_stream; int tx_stream; int domain; } ;


 int amdtp_domain_destroy (int *) ;
 int destroy_stream (struct snd_bebob*,int *) ;

void snd_bebob_stream_destroy_duplex(struct snd_bebob *bebob)
{
 amdtp_domain_destroy(&bebob->domain);

 destroy_stream(bebob, &bebob->tx_stream);
 destroy_stream(bebob, &bebob->rx_stream);
}
