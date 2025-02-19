
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_motu {scalar_t__ substreams_counter; int tx_resources; int rx_stream; int tx_stream; TYPE_3__* unit; TYPE_2__* spec; int rx_resources; int domain; } ;
struct TYPE_6__ {int device; } ;
struct TYPE_5__ {TYPE_1__* protocol; } ;
struct TYPE_4__ {int (* get_clock_rate ) (struct snd_motu*,unsigned int*) ;int (* set_clock_rate ) (struct snd_motu*,unsigned int) ;} ;


 int amdtp_domain_stop (int *) ;
 int dev_err (int *,char*,int) ;
 int finish_session (struct snd_motu*) ;
 int fw_iso_resources_free (int *) ;
 int keep_resources (struct snd_motu*,unsigned int,int *) ;
 int snd_motu_stream_cache_packet_formats (struct snd_motu*) ;
 int stub1 (struct snd_motu*,unsigned int*) ;
 int stub2 (struct snd_motu*,unsigned int) ;

int snd_motu_stream_reserve_duplex(struct snd_motu *motu, unsigned int rate)
{
 unsigned int curr_rate;
 int err;

 err = motu->spec->protocol->get_clock_rate(motu, &curr_rate);
 if (err < 0)
  return err;
 if (rate == 0)
  rate = curr_rate;

 if (motu->substreams_counter == 0 || curr_rate != rate) {
  amdtp_domain_stop(&motu->domain);
  finish_session(motu);

  fw_iso_resources_free(&motu->tx_resources);
  fw_iso_resources_free(&motu->rx_resources);

  err = motu->spec->protocol->set_clock_rate(motu, rate);
  if (err < 0) {
   dev_err(&motu->unit->device,
    "fail to set sampling rate: %d\n", err);
   return err;
  }

  err = snd_motu_stream_cache_packet_formats(motu);
  if (err < 0)
   return err;

  err = keep_resources(motu, rate, &motu->tx_stream);
  if (err < 0)
   return err;

  err = keep_resources(motu, rate, &motu->rx_stream);
  if (err < 0) {
   fw_iso_resources_free(&motu->tx_resources);
   return err;
  }
 }

 return 0;
}
