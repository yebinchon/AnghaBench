
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_motu {int rx_stream; int tx_stream; int domain; } ;


 int amdtp_domain_init (int *) ;
 int destroy_stream (struct snd_motu*,int *) ;
 int init_stream (struct snd_motu*,int *) ;

int snd_motu_stream_init_duplex(struct snd_motu *motu)
{
 int err;

 err = init_stream(motu, &motu->tx_stream);
 if (err < 0)
  return err;

 err = init_stream(motu, &motu->rx_stream);
 if (err < 0) {
  destroy_stream(motu, &motu->tx_stream);
  return err;
 }

 err = amdtp_domain_init(&motu->domain);
 if (err < 0) {
  destroy_stream(motu, &motu->tx_stream);
  destroy_stream(motu, &motu->rx_stream);
 }

 return err;
}
