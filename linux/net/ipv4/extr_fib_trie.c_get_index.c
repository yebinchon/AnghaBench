
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long t_key ;
struct key_vector {unsigned long key; scalar_t__ pos; } ;


 scalar_t__ BITS_PER_LONG ;
 scalar_t__ KEYLENGTH ;

__attribute__((used)) static inline unsigned long get_index(t_key key, struct key_vector *kv)
{
 unsigned long index = key ^ kv->key;

 if ((BITS_PER_LONG <= KEYLENGTH) && (KEYLENGTH == kv->pos))
  return 0;

 return index >> kv->pos;
}
