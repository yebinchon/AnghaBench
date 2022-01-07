
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_replace {int idx; } ;



__attribute__((used)) static int map_replace_compar(const void *p1, const void *p2)
{
 const struct map_replace *a = p1, *b = p2;

 return a->idx - b->idx;
}
