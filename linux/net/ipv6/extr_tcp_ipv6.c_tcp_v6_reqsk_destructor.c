
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_sock {int dummy; } ;
struct TYPE_2__ {int pktopts; int ipv6_opt; } ;


 TYPE_1__* inet_rsk (struct request_sock*) ;
 int kfree (int ) ;
 int kfree_skb (int ) ;

__attribute__((used)) static void tcp_v6_reqsk_destructor(struct request_sock *req)
{
 kfree(inet_rsk(req)->ipv6_opt);
 kfree_skb(inet_rsk(req)->pktopts);
}
