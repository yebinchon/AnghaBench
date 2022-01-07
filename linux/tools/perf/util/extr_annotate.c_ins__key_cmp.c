
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ins {int name; } ;


 int strcmp (void const*,int ) ;

__attribute__((used)) static int ins__key_cmp(const void *name, const void *insp)
{
 const struct ins *ins = insp;

 return strcmp(name, ins->name);
}
