
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int gpointer ;
typedef enum prop_type { ____Placeholder_prop_type } prop_type ;
struct TYPE_5__ {struct TYPE_5__* parent; TYPE_1__* prompt; } ;
struct TYPE_4__ {int type; } ;
typedef int GtkButton ;


 int FALSE ;
 int P_MENU ;
 int P_UNKNOWN ;
 int back_btn ;
 TYPE_2__* current ;
 int display_tree_part () ;
 int gtk_widget_set_sensitive (int ,int ) ;
 TYPE_2__ rootmenu ;

void on_back_clicked(GtkButton * button, gpointer user_data)
{
 enum prop_type ptype;

 current = current->parent;
 ptype = current->prompt ? current->prompt->type : P_UNKNOWN;
 if (ptype != P_MENU)
  current = current->parent;
 display_tree_part();

 if (current == &rootmenu)
  gtk_widget_set_sensitive(back_btn, FALSE);
}
