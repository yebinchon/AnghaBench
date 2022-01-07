
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int channel; } ;
struct cmp_connection {int speed; TYPE_1__ resources; } ;
struct amdtp_stream {int dummy; } ;
struct snd_bebob {int domain; int * maudio_special_quirk; struct cmp_connection out_conn; struct cmp_connection in_conn; struct amdtp_stream rx_stream; } ;


 int amdtp_domain_add_stream (int *,struct amdtp_stream*,int ,int ) ;
 int map_data_channels (struct snd_bebob*,struct amdtp_stream*) ;

__attribute__((used)) static int
start_stream(struct snd_bebob *bebob, struct amdtp_stream *stream)
{
 struct cmp_connection *conn;
 int err = 0;

 if (stream == &bebob->rx_stream)
  conn = &bebob->in_conn;
 else
  conn = &bebob->out_conn;


 if (bebob->maudio_special_quirk == ((void*)0)) {
  err = map_data_channels(bebob, stream);
  if (err < 0)
   goto end;
 }


 err = amdtp_domain_add_stream(&bebob->domain, stream,
          conn->resources.channel, conn->speed);
end:
 return err;
}
