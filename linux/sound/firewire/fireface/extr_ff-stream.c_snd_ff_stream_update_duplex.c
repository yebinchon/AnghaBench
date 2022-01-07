
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ff {int rx_stream; int tx_stream; int domain; } ;


 int amdtp_domain_stop (int *) ;
 int amdtp_stream_pcm_abort (int *) ;

void snd_ff_stream_update_duplex(struct snd_ff *ff)
{
 amdtp_domain_stop(&ff->domain);


 amdtp_stream_pcm_abort(&ff->tx_stream);
 amdtp_stream_pcm_abort(&ff->rx_stream);
}
