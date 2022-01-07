
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_oxfw {scalar_t__ substreams_count; int out_conn; scalar_t__ has_output; int in_conn; int domain; } ;


 int amdtp_domain_stop (int *) ;
 int cmp_connection_break (int *) ;
 int cmp_connection_release (int *) ;

void snd_oxfw_stream_stop_duplex(struct snd_oxfw *oxfw)
{
 if (oxfw->substreams_count == 0) {
  amdtp_domain_stop(&oxfw->domain);

  cmp_connection_break(&oxfw->in_conn);
  cmp_connection_release(&oxfw->in_conn);

  if (oxfw->has_output) {
   cmp_connection_break(&oxfw->out_conn);
   cmp_connection_release(&oxfw->out_conn);
  }
 }
}
