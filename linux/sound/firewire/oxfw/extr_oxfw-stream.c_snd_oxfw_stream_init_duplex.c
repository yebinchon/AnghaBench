
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_oxfw {int tx_stream; scalar_t__ has_output; int rx_stream; int domain; } ;


 int amdtp_domain_init (int *) ;
 int destroy_stream (struct snd_oxfw*,int *) ;
 int init_stream (struct snd_oxfw*,int *) ;

int snd_oxfw_stream_init_duplex(struct snd_oxfw *oxfw)
{
 int err;

 err = init_stream(oxfw, &oxfw->rx_stream);
 if (err < 0)
  return err;

 if (oxfw->has_output) {
  err = init_stream(oxfw, &oxfw->tx_stream);
  if (err < 0) {
   destroy_stream(oxfw, &oxfw->rx_stream);
   return err;
  }
 }

 err = amdtp_domain_init(&oxfw->domain);
 if (err < 0) {
  destroy_stream(oxfw, &oxfw->rx_stream);
  if (oxfw->has_output)
   destroy_stream(oxfw, &oxfw->tx_stream);
 }

 return err;
}
