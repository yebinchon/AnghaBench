
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashmap {int dummy; } ;


 int free (struct hashmap*) ;
 int hashmap__clear (struct hashmap*) ;

void hashmap__free(struct hashmap *map)
{
 if (!map)
  return;

 hashmap__clear(map);
 free(map);
}
