
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct module_kobject {TYPE_1__* mod; } ;
struct module_attribute {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int state; } ;


 int BUG () ;



 int sprintf (char*,char*,char const*) ;

__attribute__((used)) static ssize_t show_initstate(struct module_attribute *mattr,
         struct module_kobject *mk, char *buffer)
{
 const char *state = "unknown";

 switch (mk->mod->state) {
 case 128:
  state = "live";
  break;
 case 130:
  state = "coming";
  break;
 case 129:
  state = "going";
  break;
 default:
  BUG();
 }
 return sprintf(buffer, "%s\n", state);
}
