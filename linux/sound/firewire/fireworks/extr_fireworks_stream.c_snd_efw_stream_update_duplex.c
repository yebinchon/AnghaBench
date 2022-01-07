
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_efw {int tx_stream; int rx_stream; int in_conn; int out_conn; int domain; } ;


 int amdtp_domain_stop (int *) ;
 int amdtp_stream_pcm_abort (int *) ;
 int cmp_connection_break (int *) ;

void snd_efw_stream_update_duplex(struct snd_efw *efw)
{
 amdtp_domain_stop(&efw->domain);

 cmp_connection_break(&efw->out_conn);
 cmp_connection_break(&efw->in_conn);

 amdtp_stream_pcm_abort(&efw->rx_stream);
 amdtp_stream_pcm_abort(&efw->tx_stream);
}
