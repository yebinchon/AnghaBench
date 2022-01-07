
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long* objs; } ;
struct size_class {TYPE_1__ stats; } ;



__attribute__((used)) static inline unsigned long zs_stat_get(struct size_class *class,
    int type)
{
 return class->stats.objs[type];
}
