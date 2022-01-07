
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dg00x {int tx_stream; int rx_stream; int domain; } ;


 int amdtp_domain_init (int *) ;
 int destroy_stream (struct snd_dg00x*,int *) ;
 int init_stream (struct snd_dg00x*,int *) ;

int snd_dg00x_stream_init_duplex(struct snd_dg00x *dg00x)
{
 int err;

 err = init_stream(dg00x, &dg00x->rx_stream);
 if (err < 0)
  return err;

 err = init_stream(dg00x, &dg00x->tx_stream);
 if (err < 0)
  destroy_stream(dg00x, &dg00x->rx_stream);

 err = amdtp_domain_init(&dg00x->domain);
 if (err < 0) {
  destroy_stream(dg00x, &dg00x->rx_stream);
  destroy_stream(dg00x, &dg00x->tx_stream);
 }

 return err;
}
