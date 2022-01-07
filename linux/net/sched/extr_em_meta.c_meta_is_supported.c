
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct meta_value {int dummy; } ;
struct TYPE_2__ {scalar_t__ get; } ;


 int meta_id (struct meta_value*) ;
 TYPE_1__* meta_ops (struct meta_value*) ;

__attribute__((used)) static inline int meta_is_supported(struct meta_value *val)
{
 return !meta_id(val) || meta_ops(val)->get;
}
