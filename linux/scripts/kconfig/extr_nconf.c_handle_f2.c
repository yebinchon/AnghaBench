
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct menu {int dummy; } ;


 int show_help (struct menu*) ;

__attribute__((used)) static void handle_f2(int *key, struct menu *current_item)
{
 show_help(current_item);
 return;
}
