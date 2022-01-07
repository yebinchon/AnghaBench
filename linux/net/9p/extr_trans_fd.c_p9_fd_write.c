
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct p9_trans_fd {TYPE_1__* wr; } ;
struct p9_client {scalar_t__ status; struct p9_trans_fd* trans; } ;
typedef int ssize_t ;
struct TYPE_2__ {int f_flags; int f_pos; } ;


 scalar_t__ Disconnected ;
 int EAGAIN ;
 int EREMOTEIO ;
 int ERESTARTSYS ;
 int O_NONBLOCK ;
 int P9_DEBUG_ERROR ;
 int kernel_write (TYPE_1__*,void*,int,int *) ;
 int p9_debug (int ,char*) ;

__attribute__((used)) static int p9_fd_write(struct p9_client *client, void *v, int len)
{
 ssize_t ret;
 struct p9_trans_fd *ts = ((void*)0);

 if (client && client->status != Disconnected)
  ts = client->trans;

 if (!ts)
  return -EREMOTEIO;

 if (!(ts->wr->f_flags & O_NONBLOCK))
  p9_debug(P9_DEBUG_ERROR, "blocking write ...\n");

 ret = kernel_write(ts->wr, v, len, &ts->wr->f_pos);
 if (ret <= 0 && ret != -ERESTARTSYS && ret != -EAGAIN)
  client->status = Disconnected;
 return ret;
}
