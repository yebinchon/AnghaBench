
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct cpuset {TYPE_1__ css; } ;


 struct cpuset* css_cs (int ) ;

__attribute__((used)) static inline struct cpuset *parent_cs(struct cpuset *cs)
{
 return css_cs(cs->css.parent);
}
