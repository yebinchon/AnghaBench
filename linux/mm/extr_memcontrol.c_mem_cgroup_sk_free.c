
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {TYPE_1__* sk_memcg; } ;
struct TYPE_2__ {int css; } ;


 int css_put (int *) ;

void mem_cgroup_sk_free(struct sock *sk)
{
 if (sk->sk_memcg)
  css_put(&sk->sk_memcg->css);
}
