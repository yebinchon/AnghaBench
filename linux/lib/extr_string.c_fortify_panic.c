
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG () ;
 int pr_emerg (char*,char const*) ;

void fortify_panic(const char *name)
{
 pr_emerg("detected buffer overflow in %s\n", name);
 BUG();
}
