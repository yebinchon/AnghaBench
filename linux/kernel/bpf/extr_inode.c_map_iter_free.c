
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_iter {struct map_iter* key; } ;


 int kfree (struct map_iter*) ;

__attribute__((used)) static void map_iter_free(struct map_iter *iter)
{
 if (iter) {
  kfree(iter->key);
  kfree(iter);
 }
}
