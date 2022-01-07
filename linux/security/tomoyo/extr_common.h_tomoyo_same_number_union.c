
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tomoyo_number_union {scalar_t__* values; scalar_t__ group; scalar_t__* value_type; } ;



__attribute__((used)) static inline bool tomoyo_same_number_union
(const struct tomoyo_number_union *a, const struct tomoyo_number_union *b)
{
 return a->values[0] == b->values[0] && a->values[1] == b->values[1] &&
  a->group == b->group && a->value_type[0] == b->value_type[0] &&
  a->value_type[1] == b->value_type[1];
}
