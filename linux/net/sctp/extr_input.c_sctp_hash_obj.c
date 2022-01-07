
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct sctp_transport {int ipaddr; TYPE_3__* asoc; } ;
typedef int __u32 ;
struct TYPE_4__ {int port; } ;
struct TYPE_5__ {TYPE_1__ bind_addr; int sk; } ;
struct TYPE_6__ {TYPE_2__ base; } ;


 int htons (int ) ;
 int sctp_hashfn (int ,int ,int *,int ) ;
 int sock_net (int ) ;

__attribute__((used)) static inline __u32 sctp_hash_obj(const void *data, u32 len, u32 seed)
{
 const struct sctp_transport *t = data;

 return sctp_hashfn(sock_net(t->asoc->base.sk),
      htons(t->asoc->base.bind_addr.port),
      &t->ipaddr, seed);
}
