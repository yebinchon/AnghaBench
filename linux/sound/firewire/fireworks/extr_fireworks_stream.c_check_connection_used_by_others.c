
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmp_connection {scalar_t__ direction; int pcr_index; } ;
struct amdtp_stream {int dummy; } ;
struct snd_efw {TYPE_1__* unit; struct cmp_connection in_conn; struct cmp_connection out_conn; struct amdtp_stream tx_stream; } ;
struct TYPE_2__ {int device; } ;


 scalar_t__ CMP_OUTPUT ;
 int EBUSY ;
 int amdtp_stream_running (struct amdtp_stream*) ;
 int cmp_connection_check_used (struct cmp_connection*,int*) ;
 int dev_err (int *,char*,char,int ) ;

__attribute__((used)) static int
check_connection_used_by_others(struct snd_efw *efw, struct amdtp_stream *s)
{
 struct cmp_connection *conn;
 bool used;
 int err;

 if (s == &efw->tx_stream)
  conn = &efw->out_conn;
 else
  conn = &efw->in_conn;

 err = cmp_connection_check_used(conn, &used);
 if ((err >= 0) && used && !amdtp_stream_running(s)) {
  dev_err(&efw->unit->device,
   "Connection established by others: %cPCR[%d]\n",
   (conn->direction == CMP_OUTPUT) ? 'o' : 'i',
   conn->pcr_index);
  err = -EBUSY;
 }

 return err;
}
