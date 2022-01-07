
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {unsigned int generation; int channel; } ;
struct snd_motu {scalar_t__ substreams_counter; int domain; TYPE_5__* unit; TYPE_3__* spec; int rx_stream; int tx_stream; TYPE_6__ rx_resources; TYPE_6__ tx_resources; } ;
struct TYPE_11__ {int device; } ;
struct TYPE_10__ {int max_speed; TYPE_1__* card; } ;
struct TYPE_9__ {TYPE_2__* protocol; } ;
struct TYPE_8__ {int (* switch_fetching_mode ) (struct snd_motu*,int) ;} ;
struct TYPE_7__ {unsigned int generation; } ;


 int CALLBACK_TIMEOUT ;
 int ETIMEDOUT ;
 int amdtp_domain_add_stream (int *,int *,int ,int) ;
 int amdtp_domain_start (int *) ;
 int amdtp_domain_stop (int *) ;
 int amdtp_stream_running (int *) ;
 int amdtp_stream_wait_callback (int *,int ) ;
 scalar_t__ amdtp_streaming_error (int *) ;
 int begin_session (struct snd_motu*) ;
 int dev_err (int *,char*,int) ;
 int ensure_packet_formats (struct snd_motu*) ;
 int finish_session (struct snd_motu*) ;
 int fw_iso_resources_update (TYPE_6__*) ;
 TYPE_4__* fw_parent_device (TYPE_5__*) ;
 int stub1 (struct snd_motu*,int) ;

int snd_motu_stream_start_duplex(struct snd_motu *motu)
{
 unsigned int generation = motu->rx_resources.generation;
 int err = 0;

 if (motu->substreams_counter == 0)
  return 0;

 if (amdtp_streaming_error(&motu->rx_stream) ||
     amdtp_streaming_error(&motu->tx_stream)) {
  amdtp_domain_stop(&motu->domain);
  finish_session(motu);
 }

 if (generation != fw_parent_device(motu->unit)->card->generation) {
  err = fw_iso_resources_update(&motu->rx_resources);
  if (err < 0)
   return err;

  err = fw_iso_resources_update(&motu->tx_resources);
  if (err < 0)
   return err;
 }

 if (!amdtp_stream_running(&motu->rx_stream)) {
  int spd = fw_parent_device(motu->unit)->max_speed;

  err = ensure_packet_formats(motu);
  if (err < 0)
   return err;

  err = begin_session(motu);
  if (err < 0) {
   dev_err(&motu->unit->device,
    "fail to start isochronous comm: %d\n", err);
   goto stop_streams;
  }

  err = amdtp_domain_add_stream(&motu->domain, &motu->tx_stream,
           motu->tx_resources.channel, spd);
  if (err < 0)
   goto stop_streams;

  err = amdtp_domain_add_stream(&motu->domain, &motu->rx_stream,
           motu->rx_resources.channel, spd);
  if (err < 0)
   goto stop_streams;

  err = amdtp_domain_start(&motu->domain);
  if (err < 0)
   goto stop_streams;

  if (!amdtp_stream_wait_callback(&motu->tx_stream,
      CALLBACK_TIMEOUT) ||
      !amdtp_stream_wait_callback(&motu->rx_stream,
      CALLBACK_TIMEOUT)) {
   err = -ETIMEDOUT;
   goto stop_streams;
  }

  err = motu->spec->protocol->switch_fetching_mode(motu, 1);
  if (err < 0) {
   dev_err(&motu->unit->device,
    "fail to enable frame fetching: %d\n", err);
   goto stop_streams;
  }
 }

 return 0;

stop_streams:
 amdtp_domain_stop(&motu->domain);
 finish_session(motu);
 return err;
}
