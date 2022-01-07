
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int s_addr; } ;
struct TYPE_6__ {TYPE_1__ sin_addr; int sin_family; } ;
union sctp_addr {TYPE_2__ v4; } ;
struct sctp_transport {scalar_t__ dst; union sctp_addr saddr; } ;
struct sctp_sock {int dummy; } ;
struct rtable {int dummy; } ;
struct TYPE_7__ {int saddr; } ;
struct TYPE_8__ {TYPE_3__ ip4; } ;
struct flowi {TYPE_4__ u; } ;


 int AF_INET ;

__attribute__((used)) static void sctp_v4_get_saddr(struct sctp_sock *sk,
         struct sctp_transport *t,
         struct flowi *fl)
{
 union sctp_addr *saddr = &t->saddr;
 struct rtable *rt = (struct rtable *)t->dst;

 if (rt) {
  saddr->v4.sin_family = AF_INET;
  saddr->v4.sin_addr.s_addr = fl->u.ip4.saddr;
 }
}
