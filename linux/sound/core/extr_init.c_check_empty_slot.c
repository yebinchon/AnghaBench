
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;


 int ** slots ;

__attribute__((used)) static int check_empty_slot(struct module *module, int slot)
{
 return !slots[slot] || !*slots[slot];
}
