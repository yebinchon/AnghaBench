
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_bebob {scalar_t__ substreams_counter; int in_conn; int out_conn; int domain; } ;


 int amdtp_domain_stop (int *) ;
 int break_both_connections (struct snd_bebob*) ;
 int cmp_connection_release (int *) ;

void snd_bebob_stream_stop_duplex(struct snd_bebob *bebob)
{
 if (bebob->substreams_counter == 0) {
  amdtp_domain_stop(&bebob->domain);
  break_both_connections(bebob);

  cmp_connection_release(&bebob->out_conn);
  cmp_connection_release(&bebob->in_conn);
 }
}
