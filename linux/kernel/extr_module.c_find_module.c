
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;


 struct module* find_module_all (char const*,int ,int) ;
 int module_assert_mutex () ;
 int strlen (char const*) ;

struct module *find_module(const char *name)
{
 module_assert_mutex();
 return find_module_all(name, strlen(name), 0);
}
