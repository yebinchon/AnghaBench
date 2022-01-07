
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_efw {scalar_t__ substreams_counter; int in_conn; int out_conn; int domain; int tx_stream; int rx_stream; } ;


 int CALLBACK_TIMEOUT ;
 int EIO ;
 int ETIMEDOUT ;
 int amdtp_domain_start (int *) ;
 int amdtp_domain_stop (int *) ;
 int amdtp_stream_running (int *) ;
 int amdtp_stream_wait_callback (int *,int ) ;
 scalar_t__ amdtp_streaming_error (int *) ;
 int cmp_connection_break (int *) ;
 int snd_efw_command_get_sampling_rate (struct snd_efw*,unsigned int*) ;
 int start_stream (struct snd_efw*,int *,unsigned int) ;

int snd_efw_stream_start_duplex(struct snd_efw *efw)
{
 unsigned int rate;
 int err = 0;


 if (efw->substreams_counter == 0)
  return -EIO;

 if (amdtp_streaming_error(&efw->rx_stream) ||
     amdtp_streaming_error(&efw->tx_stream)) {
  amdtp_domain_stop(&efw->domain);
  cmp_connection_break(&efw->out_conn);
  cmp_connection_break(&efw->in_conn);
 }

 err = snd_efw_command_get_sampling_rate(efw, &rate);
 if (err < 0)
  return err;

 if (!amdtp_stream_running(&efw->rx_stream)) {
  err = start_stream(efw, &efw->rx_stream, rate);
  if (err < 0)
   goto error;

  err = start_stream(efw, &efw->tx_stream, rate);
  if (err < 0)
   goto error;

  err = amdtp_domain_start(&efw->domain);
  if (err < 0)
   goto error;


  if (!amdtp_stream_wait_callback(&efw->rx_stream,
      CALLBACK_TIMEOUT) ||
      !amdtp_stream_wait_callback(&efw->tx_stream,
      CALLBACK_TIMEOUT)) {
   err = -ETIMEDOUT;
   goto error;
  }
 }

 return 0;
error:
 amdtp_domain_stop(&efw->domain);

 cmp_connection_break(&efw->out_conn);
 cmp_connection_break(&efw->in_conn);

 return err;
}
