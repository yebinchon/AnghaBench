
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arch {int name; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int arch__cmp(const void *a, const void *b)
{
 const struct arch *aa = a;
 const struct arch *ab = b;

 return strcmp(aa->name, ab->name);
}
