
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_sock {int dummy; } ;
struct netlbl_calipso_ops {int (* req_delattr ) (struct request_sock*) ;} ;


 struct netlbl_calipso_ops* netlbl_calipso_ops_get () ;
 int stub1 (struct request_sock*) ;

void calipso_req_delattr(struct request_sock *req)
{
 const struct netlbl_calipso_ops *ops = netlbl_calipso_ops_get();

 if (ops)
  ops->req_delattr(req);
}
