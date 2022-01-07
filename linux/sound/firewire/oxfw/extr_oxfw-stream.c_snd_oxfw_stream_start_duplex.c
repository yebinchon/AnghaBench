
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_oxfw {scalar_t__ substreams_count; int out_conn; scalar_t__ has_output; int in_conn; int domain; int tx_stream; int rx_stream; TYPE_1__* unit; } ;
struct TYPE_2__ {int device; } ;


 int CALLBACK_TIMEOUT ;
 int EIO ;
 int ETIMEDOUT ;
 int amdtp_domain_start (int *) ;
 int amdtp_domain_stop (int *) ;
 int amdtp_stream_running (int *) ;
 int amdtp_stream_wait_callback (int *,int ) ;
 scalar_t__ amdtp_streaming_error (int *) ;
 int cmp_connection_break (int *) ;
 int dev_err (int *,char*,int) ;
 int start_stream (struct snd_oxfw*,int *) ;

int snd_oxfw_stream_start_duplex(struct snd_oxfw *oxfw)
{
 int err;

 if (oxfw->substreams_count == 0)
  return -EIO;

 if (amdtp_streaming_error(&oxfw->rx_stream) ||
     amdtp_streaming_error(&oxfw->tx_stream)) {
  amdtp_domain_stop(&oxfw->domain);

  cmp_connection_break(&oxfw->in_conn);
  if (oxfw->has_output)
   cmp_connection_break(&oxfw->out_conn);
 }

 if (!amdtp_stream_running(&oxfw->rx_stream)) {
  err = start_stream(oxfw, &oxfw->rx_stream);
  if (err < 0) {
   dev_err(&oxfw->unit->device,
    "fail to prepare rx stream: %d\n", err);
   goto error;
  }

  if (oxfw->has_output &&
      !amdtp_stream_running(&oxfw->tx_stream)) {
   err = start_stream(oxfw, &oxfw->tx_stream);
   if (err < 0) {
    dev_err(&oxfw->unit->device,
     "fail to prepare tx stream: %d\n", err);
    goto error;
   }
  }

  err = amdtp_domain_start(&oxfw->domain);
  if (err < 0)
   goto error;


  if (!amdtp_stream_wait_callback(&oxfw->rx_stream,
      CALLBACK_TIMEOUT)) {
   err = -ETIMEDOUT;
   goto error;
  }

  if (oxfw->has_output) {
   if (!amdtp_stream_wait_callback(&oxfw->tx_stream,
       CALLBACK_TIMEOUT)) {
    err = -ETIMEDOUT;
    goto error;
   }
  }
 }

 return 0;
error:
 amdtp_domain_stop(&oxfw->domain);

 cmp_connection_break(&oxfw->in_conn);
 if (oxfw->has_output)
  cmp_connection_break(&oxfw->out_conn);

 return err;
}
