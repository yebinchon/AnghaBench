
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sctp_statistics; } ;
struct net {TYPE_1__ sctp; } ;


 int free_percpu (int ) ;

__attribute__((used)) static inline void cleanup_sctp_mibs(struct net *net)
{
 free_percpu(net->sctp.sctp_statistics);
}
