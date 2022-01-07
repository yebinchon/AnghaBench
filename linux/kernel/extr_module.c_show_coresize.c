
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct module_kobject {TYPE_2__* mod; } ;
struct module_attribute {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {int size; } ;
struct TYPE_4__ {TYPE_1__ core_layout; } ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_coresize(struct module_attribute *mattr,
        struct module_kobject *mk, char *buffer)
{
 return sprintf(buffer, "%u\n", mk->mod->core_layout.size);
}
