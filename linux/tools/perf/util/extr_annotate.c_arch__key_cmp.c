
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arch {int name; } ;


 int strcmp (void const*,int ) ;

__attribute__((used)) static int arch__key_cmp(const void *name, const void *archp)
{
 const struct arch *arch = archp;

 return strcmp(name, arch->name);
}
