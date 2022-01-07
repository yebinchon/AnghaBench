
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int channel; } ;
struct cmp_connection {int speed; TYPE_1__ resources; } ;
struct amdtp_stream {int dummy; } ;
struct snd_oxfw {int domain; struct cmp_connection out_conn; struct cmp_connection in_conn; struct amdtp_stream rx_stream; } ;


 int amdtp_domain_add_stream (int *,struct amdtp_stream*,int ,int ) ;
 int cmp_connection_break (struct cmp_connection*) ;
 int cmp_connection_establish (struct cmp_connection*) ;

__attribute__((used)) static int start_stream(struct snd_oxfw *oxfw, struct amdtp_stream *stream)
{
 struct cmp_connection *conn;
 int err;

 if (stream == &oxfw->rx_stream)
  conn = &oxfw->in_conn;
 else
  conn = &oxfw->out_conn;

 err = cmp_connection_establish(conn);
 if (err < 0)
  return err;

 err = amdtp_domain_add_stream(&oxfw->domain, stream,
          conn->resources.channel, conn->speed);
 if (err < 0) {
  cmp_connection_break(conn);
  return err;
 }

 return 0;
}
