
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_motu {scalar_t__ substreams_counter; int tx_stream; int rx_stream; int domain; } ;


 int amdtp_domain_destroy (int *) ;
 int destroy_stream (struct snd_motu*,int *) ;

void snd_motu_stream_destroy_duplex(struct snd_motu *motu)
{
 amdtp_domain_destroy(&motu->domain);

 destroy_stream(motu, &motu->rx_stream);
 destroy_stream(motu, &motu->tx_stream);

 motu->substreams_counter = 0;
}
