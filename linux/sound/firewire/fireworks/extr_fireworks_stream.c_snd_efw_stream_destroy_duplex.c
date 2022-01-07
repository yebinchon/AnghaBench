
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_efw {int tx_stream; int rx_stream; int domain; } ;


 int amdtp_domain_destroy (int *) ;
 int destroy_stream (struct snd_efw*,int *) ;

void snd_efw_stream_destroy_duplex(struct snd_efw *efw)
{
 amdtp_domain_destroy(&efw->domain);

 destroy_stream(efw, &efw->rx_stream);
 destroy_stream(efw, &efw->tx_stream);
}
