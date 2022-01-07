
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ff {int tx_stream; int rx_stream; int domain; } ;


 int amdtp_domain_init (int *) ;
 int destroy_stream (struct snd_ff*,int *) ;
 int init_stream (struct snd_ff*,int *) ;

int snd_ff_stream_init_duplex(struct snd_ff *ff)
{
 int err;

 err = init_stream(ff, &ff->rx_stream);
 if (err < 0)
  return err;

 err = init_stream(ff, &ff->tx_stream);
 if (err < 0) {
  destroy_stream(ff, &ff->rx_stream);
  return err;
 }

 err = amdtp_domain_init(&ff->domain);
 if (err < 0) {
  destroy_stream(ff, &ff->rx_stream);
  destroy_stream(ff, &ff->tx_stream);
 }

 return err;
}
