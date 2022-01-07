
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt6_info {int dummy; } ;
struct fib6_result {TYPE_1__* nh; } ;
struct TYPE_2__ {int * rt6i_pcpu; } ;


 struct rt6_info* this_cpu_read (int ) ;

__attribute__((used)) static struct rt6_info *rt6_get_pcpu_route(const struct fib6_result *res)
{
 struct rt6_info *pcpu_rt;

 pcpu_rt = this_cpu_read(*res->nh->rt6i_pcpu);

 return pcpu_rt;
}
