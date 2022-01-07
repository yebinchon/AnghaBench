
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_oxfw {int tx_stream; int out_conn; scalar_t__ has_output; int rx_stream; int in_conn; int domain; } ;


 int amdtp_domain_stop (int *) ;
 int amdtp_stream_pcm_abort (int *) ;
 int cmp_connection_break (int *) ;

void snd_oxfw_stream_update_duplex(struct snd_oxfw *oxfw)
{
 amdtp_domain_stop(&oxfw->domain);

 cmp_connection_break(&oxfw->in_conn);

 amdtp_stream_pcm_abort(&oxfw->rx_stream);

 if (oxfw->has_output) {
  cmp_connection_break(&oxfw->out_conn);

  amdtp_stream_pcm_abort(&oxfw->tx_stream);
 }
}
