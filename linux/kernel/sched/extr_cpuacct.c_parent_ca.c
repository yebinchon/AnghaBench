
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct cpuacct {TYPE_1__ css; } ;


 struct cpuacct* css_ca (int ) ;

__attribute__((used)) static inline struct cpuacct *parent_ca(struct cpuacct *ca)
{
 return css_ca(ca->css.parent);
}
