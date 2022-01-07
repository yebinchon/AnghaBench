
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meta_value {int dummy; } ;
struct meta_type_ops {int dummy; } ;


 struct meta_type_ops const* __meta_type_ops ;
 size_t meta_type (struct meta_value*) ;

__attribute__((used)) static inline const struct meta_type_ops *meta_type_ops(struct meta_value *v)
{
 return &__meta_type_ops[meta_type(v)];
}
