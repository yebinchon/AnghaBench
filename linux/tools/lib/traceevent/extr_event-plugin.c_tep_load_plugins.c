
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_plugin_list {int dummy; } ;
struct tep_handle {int dummy; } ;


 int load_plugin ;
 int load_plugins (struct tep_handle*,char*,int ,struct tep_plugin_list**) ;

struct tep_plugin_list*
tep_load_plugins(struct tep_handle *tep)
{
 struct tep_plugin_list *list = ((void*)0);

 load_plugins(tep, ".so", load_plugin, &list);
 return list;
}
