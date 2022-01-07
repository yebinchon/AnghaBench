
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipcount {int count; } ;



__attribute__((used)) static int count_cmp(const void *p1, const void *p2)
{
 return ((struct ipcount *)p1)->count - ((struct ipcount *)p2)->count;
}
