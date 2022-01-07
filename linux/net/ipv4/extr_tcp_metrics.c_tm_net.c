
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_metrics_block {int tcpm_net; } ;
struct net {int dummy; } ;


 struct net* read_pnet (int *) ;

__attribute__((used)) static inline struct net *tm_net(struct tcp_metrics_block *tm)
{
 return read_pnet(&tm->tcpm_net);
}
