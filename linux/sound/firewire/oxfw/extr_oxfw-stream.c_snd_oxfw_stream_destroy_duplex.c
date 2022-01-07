
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_oxfw {int tx_stream; scalar_t__ has_output; int rx_stream; int domain; } ;


 int amdtp_domain_destroy (int *) ;
 int destroy_stream (struct snd_oxfw*,int *) ;

void snd_oxfw_stream_destroy_duplex(struct snd_oxfw *oxfw)
{
 amdtp_domain_destroy(&oxfw->domain);

 destroy_stream(oxfw, &oxfw->rx_stream);

 if (oxfw->has_output)
  destroy_stream(oxfw, &oxfw->tx_stream);
}
