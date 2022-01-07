
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ins {int name; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int ins__cmp(const void *a, const void *b)
{
 const struct ins *ia = a;
 const struct ins *ib = b;

 return strcmp(ia->name, ib->name);
}
