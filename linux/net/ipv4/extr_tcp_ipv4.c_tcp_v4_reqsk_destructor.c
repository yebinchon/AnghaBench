
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_sock {int dummy; } ;
struct TYPE_2__ {int ireq_opt; } ;


 TYPE_1__* inet_rsk (struct request_sock*) ;
 int kfree (int ) ;
 int rcu_dereference_protected (int ,int) ;

__attribute__((used)) static void tcp_v4_reqsk_destructor(struct request_sock *req)
{
 kfree(rcu_dereference_protected(inet_rsk(req)->ireq_opt, 1));
}
