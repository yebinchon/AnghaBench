
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdtp_stream {int dummy; } ;
struct snd_efw {int in_conn; int out_conn; struct amdtp_stream tx_stream; } ;


 int amdtp_stream_destroy (struct amdtp_stream*) ;
 int cmp_connection_destroy (int *) ;

__attribute__((used)) static void destroy_stream(struct snd_efw *efw, struct amdtp_stream *stream)
{
 amdtp_stream_destroy(stream);

 if (stream == &efw->tx_stream)
  cmp_connection_destroy(&efw->out_conn);
 else
  cmp_connection_destroy(&efw->in_conn);
}
