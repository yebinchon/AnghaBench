
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct request_sock {int dummy; } ;
struct TYPE_2__ {int ip6; } ;
struct flowi {TYPE_1__ u; } ;
struct dst_entry {int dummy; } ;


 int IPPROTO_TCP ;
 struct dst_entry* inet6_csk_route_req (struct sock const*,int *,struct request_sock const*,int ) ;

__attribute__((used)) static struct dst_entry *tcp_v6_route_req(const struct sock *sk,
       struct flowi *fl,
       const struct request_sock *req)
{
 return inet6_csk_route_req(sk, &fl->u.ip6, req, IPPROTO_TCP);
}
