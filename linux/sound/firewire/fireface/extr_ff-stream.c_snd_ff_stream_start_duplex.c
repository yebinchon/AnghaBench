
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int channel; } ;
struct TYPE_6__ {int channel; } ;
struct snd_ff {scalar_t__ substreams_counter; int domain; TYPE_4__* spec; int tx_stream; int rx_stream; TYPE_2__ tx_resources; TYPE_1__ rx_resources; int unit; } ;
struct TYPE_10__ {int max_speed; } ;
struct TYPE_9__ {TYPE_3__* protocol; } ;
struct TYPE_8__ {int (* begin_session ) (struct snd_ff*,unsigned int) ;int (* switch_fetching_mode ) (struct snd_ff*,int) ;} ;


 int CALLBACK_TIMEOUT_MS ;
 int ETIMEDOUT ;
 int amdtp_domain_add_stream (int *,int *,int ,int) ;
 int amdtp_domain_start (int *) ;
 int amdtp_domain_stop (int *) ;
 int amdtp_stream_running (int *) ;
 int amdtp_stream_wait_callback (int *,int ) ;
 scalar_t__ amdtp_streaming_error (int *) ;
 int finish_session (struct snd_ff*) ;
 TYPE_5__* fw_parent_device (int ) ;
 int stub1 (struct snd_ff*,unsigned int) ;
 int stub2 (struct snd_ff*,int) ;

int snd_ff_stream_start_duplex(struct snd_ff *ff, unsigned int rate)
{
 int err;

 if (ff->substreams_counter == 0)
  return 0;

 if (amdtp_streaming_error(&ff->tx_stream) ||
     amdtp_streaming_error(&ff->rx_stream)) {
  amdtp_domain_stop(&ff->domain);
  finish_session(ff);
 }





 if (!amdtp_stream_running(&ff->rx_stream)) {
  int spd = fw_parent_device(ff->unit)->max_speed;

  err = ff->spec->protocol->begin_session(ff, rate);
  if (err < 0)
   goto error;

  err = amdtp_domain_add_stream(&ff->domain, &ff->rx_stream,
           ff->rx_resources.channel, spd);
  if (err < 0)
   goto error;

  err = amdtp_domain_add_stream(&ff->domain, &ff->tx_stream,
           ff->tx_resources.channel, spd);
  if (err < 0)
   goto error;

  err = amdtp_domain_start(&ff->domain);
  if (err < 0)
   goto error;

  if (!amdtp_stream_wait_callback(&ff->rx_stream,
      CALLBACK_TIMEOUT_MS) ||
      !amdtp_stream_wait_callback(&ff->tx_stream,
      CALLBACK_TIMEOUT_MS)) {
   err = -ETIMEDOUT;
   goto error;
  }

  err = ff->spec->protocol->switch_fetching_mode(ff, 1);
  if (err < 0)
   goto error;
 }

 return 0;
error:
 amdtp_domain_stop(&ff->domain);
 finish_session(ff);

 return err;
}
