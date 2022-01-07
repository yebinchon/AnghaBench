
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct menu {int dummy; } ;


 int conf_load () ;

__attribute__((used)) static void handle_f7(int *key, struct menu *current_item)
{
 conf_load();
 return;
}
