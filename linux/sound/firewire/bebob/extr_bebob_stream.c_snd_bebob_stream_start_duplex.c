
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_bebob {scalar_t__ substreams_counter; int domain; int tx_stream; int rx_stream; TYPE_3__* unit; TYPE_2__* spec; scalar_t__ maudio_special_quirk; } ;
struct TYPE_6__ {int device; } ;
struct TYPE_5__ {TYPE_1__* rate; } ;
struct TYPE_4__ {int (* get ) (struct snd_bebob*,unsigned int*) ;int (* set ) (struct snd_bebob*,unsigned int) ;} ;


 int CALLBACK_TIMEOUT ;
 int EIO ;
 int ETIMEDOUT ;
 int amdtp_domain_start (int *) ;
 int amdtp_domain_stop (int *) ;
 int amdtp_stream_running (int *) ;
 int amdtp_stream_wait_callback (int *,int ) ;
 scalar_t__ amdtp_streaming_error (int *) ;
 int break_both_connections (struct snd_bebob*) ;
 int dev_err (int *,char*,int) ;
 int make_both_connections (struct snd_bebob*) ;
 int start_stream (struct snd_bebob*,int *) ;
 int stub1 (struct snd_bebob*,unsigned int*) ;
 int stub2 (struct snd_bebob*,unsigned int) ;

int snd_bebob_stream_start_duplex(struct snd_bebob *bebob)
{
 int err;


 if (bebob->substreams_counter == 0)
  return -EIO;


 if (amdtp_streaming_error(&bebob->rx_stream) ||
     amdtp_streaming_error(&bebob->tx_stream)) {
  amdtp_domain_stop(&bebob->domain);
  break_both_connections(bebob);
 }

 if (!amdtp_stream_running(&bebob->rx_stream)) {
  unsigned int curr_rate;

  if (bebob->maudio_special_quirk) {
   err = bebob->spec->rate->get(bebob, &curr_rate);
   if (err < 0)
    return err;
  }

  err = make_both_connections(bebob);
  if (err < 0)
   return err;

  err = start_stream(bebob, &bebob->rx_stream);
  if (err < 0)
   goto error;

  err = start_stream(bebob, &bebob->tx_stream);
  if (err < 0)
   goto error;

  err = amdtp_domain_start(&bebob->domain);
  if (err < 0)
   goto error;




  if (bebob->maudio_special_quirk) {
   err = bebob->spec->rate->set(bebob, curr_rate);
   if (err < 0) {
    dev_err(&bebob->unit->device,
     "fail to ensure sampling rate: %d\n",
     err);
    goto error;
   }
  }

  if (!amdtp_stream_wait_callback(&bebob->rx_stream,
      CALLBACK_TIMEOUT) ||
      !amdtp_stream_wait_callback(&bebob->tx_stream,
      CALLBACK_TIMEOUT)) {
   err = -ETIMEDOUT;
   goto error;
  }
 }

 return 0;
error:
 amdtp_domain_stop(&bebob->domain);
 break_both_connections(bebob);
 return err;
}
