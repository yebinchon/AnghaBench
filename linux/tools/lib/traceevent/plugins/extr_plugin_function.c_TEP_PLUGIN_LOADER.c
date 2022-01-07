
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int dummy; } ;


 int function_handler ;
 int plugin_options ;
 int tep_plugin_add_options (char*,int ) ;
 int tep_register_event_handler (struct tep_handle*,int,char*,char*,int ,int *) ;

int TEP_PLUGIN_LOADER(struct tep_handle *tep)
{
 tep_register_event_handler(tep, -1, "ftrace", "function",
       function_handler, ((void*)0));

 tep_plugin_add_options("ftrace", plugin_options);

 return 0;
}
