
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meta_value {int dummy; } ;
struct meta_ops {int dummy; } ;


 struct meta_ops** __meta_ops ;
 size_t meta_id (struct meta_value*) ;
 size_t meta_type (struct meta_value*) ;

__attribute__((used)) static inline struct meta_ops *meta_ops(struct meta_value *val)
{
 return &__meta_ops[meta_type(val)][meta_id(val)];
}
