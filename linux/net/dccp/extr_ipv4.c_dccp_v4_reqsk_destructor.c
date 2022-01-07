
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request_sock {int dummy; } ;
struct TYPE_4__ {int dreq_featneg; } ;
struct TYPE_3__ {int ireq_opt; } ;


 int dccp_feat_list_purge (int *) ;
 TYPE_2__* dccp_rsk (struct request_sock*) ;
 TYPE_1__* inet_rsk (struct request_sock*) ;
 int kfree (int ) ;
 int rcu_dereference_protected (int ,int) ;

__attribute__((used)) static void dccp_v4_reqsk_destructor(struct request_sock *req)
{
 dccp_feat_list_purge(&dccp_rsk(req)->dreq_featneg);
 kfree(rcu_dereference_protected(inet_rsk(req)->ireq_opt, 1));
}
