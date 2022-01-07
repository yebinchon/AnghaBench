
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_efw {scalar_t__ substreams_counter; int in_conn; int out_conn; int domain; } ;


 int amdtp_domain_stop (int *) ;
 int cmp_connection_break (int *) ;
 int cmp_connection_release (int *) ;

void snd_efw_stream_stop_duplex(struct snd_efw *efw)
{
 if (efw->substreams_counter == 0) {
  amdtp_domain_stop(&efw->domain);

  cmp_connection_break(&efw->out_conn);
  cmp_connection_break(&efw->in_conn);

  cmp_connection_release(&efw->out_conn);
  cmp_connection_release(&efw->in_conn);
 }
}
