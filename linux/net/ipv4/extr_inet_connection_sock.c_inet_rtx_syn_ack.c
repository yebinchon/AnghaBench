
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct request_sock {int num_retrans; TYPE_1__* rsk_ops; } ;
struct TYPE_2__ {int (* rtx_syn_ack ) (struct sock const*,struct request_sock*) ;} ;


 int stub1 (struct sock const*,struct request_sock*) ;

int inet_rtx_syn_ack(const struct sock *parent, struct request_sock *req)
{
 int err = req->rsk_ops->rtx_syn_ack(parent, req);

 if (!err)
  req->num_retrans++;
 return err;
}
