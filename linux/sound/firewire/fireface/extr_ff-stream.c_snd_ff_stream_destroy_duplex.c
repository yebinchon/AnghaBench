
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ff {int tx_stream; int rx_stream; int domain; } ;


 int amdtp_domain_destroy (int *) ;
 int destroy_stream (struct snd_ff*,int *) ;

void snd_ff_stream_destroy_duplex(struct snd_ff *ff)
{
 amdtp_domain_destroy(&ff->domain);

 destroy_stream(ff, &ff->rx_stream);
 destroy_stream(ff, &ff->tx_stream);
}
