
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_efw {int rx_stream; int tx_stream; int domain; } ;


 int SND_EFW_TRANSPORT_MODE_IEC61883 ;
 int amdtp_domain_init (int *) ;
 int destroy_stream (struct snd_efw*,int *) ;
 int init_stream (struct snd_efw*,int *) ;
 int snd_efw_command_set_tx_mode (struct snd_efw*,int ) ;

int snd_efw_stream_init_duplex(struct snd_efw *efw)
{
 int err;

 err = init_stream(efw, &efw->tx_stream);
 if (err < 0)
  return err;

 err = init_stream(efw, &efw->rx_stream);
 if (err < 0) {
  destroy_stream(efw, &efw->tx_stream);
  return err;
 }

 err = amdtp_domain_init(&efw->domain);
 if (err < 0) {
  destroy_stream(efw, &efw->tx_stream);
  destroy_stream(efw, &efw->rx_stream);
  return err;
 }


 err = snd_efw_command_set_tx_mode(efw, SND_EFW_TRANSPORT_MODE_IEC61883);
 if (err < 0) {
  destroy_stream(efw, &efw->tx_stream);
  destroy_stream(efw, &efw->rx_stream);
 }

 return err;
}
