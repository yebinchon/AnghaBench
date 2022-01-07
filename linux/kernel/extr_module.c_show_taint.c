
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module_kobject {int mod; } ;
struct module_attribute {int dummy; } ;
typedef size_t ssize_t ;


 size_t module_flags_taint (int ,char*) ;

__attribute__((used)) static ssize_t show_taint(struct module_attribute *mattr,
     struct module_kobject *mk, char *buffer)
{
 size_t l;

 l = module_flags_taint(mk->mod, buffer);
 buffer[l++] = '\n';
 return l;
}
