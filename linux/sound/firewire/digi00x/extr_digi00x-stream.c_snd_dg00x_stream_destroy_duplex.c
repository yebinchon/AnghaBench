
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dg00x {int tx_stream; int rx_stream; int domain; } ;


 int amdtp_domain_destroy (int *) ;
 int destroy_stream (struct snd_dg00x*,int *) ;

void snd_dg00x_stream_destroy_duplex(struct snd_dg00x *dg00x)
{
 amdtp_domain_destroy(&dg00x->domain);

 destroy_stream(dg00x, &dg00x->rx_stream);
 destroy_stream(dg00x, &dg00x->tx_stream);
}
