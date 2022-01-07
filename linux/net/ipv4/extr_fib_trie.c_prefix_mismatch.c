
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t_key ;
struct key_vector {int key; } ;



__attribute__((used)) static inline t_key prefix_mismatch(t_key key, struct key_vector *n)
{
 t_key prefix = n->key;

 return (key ^ prefix) & (prefix | -prefix);
}
