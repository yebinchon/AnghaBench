
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_vector {unsigned long bits; } ;



__attribute__((used)) static inline unsigned long child_length(const struct key_vector *tn)
{
 return (1ul << tn->bits) & ~(1ul);
}
