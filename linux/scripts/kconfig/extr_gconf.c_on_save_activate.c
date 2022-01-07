
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpointer ;
typedef int GtkMenuItem ;


 scalar_t__ conf_write (int *) ;
 int conf_write_autoconf (int ) ;
 int text_insert_msg (char*,char*) ;

void on_save_activate(GtkMenuItem * menuitem, gpointer user_data)
{
 if (conf_write(((void*)0)))
  text_insert_msg("Error", "Unable to save configuration !");
 conf_write_autoconf(0);
}
