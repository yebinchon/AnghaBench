
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int dummy; } ;


 int process_jbd2_dev_to_name ;
 int process_jiffies_to_msecs ;
 int tep_unregister_print_function (struct tep_handle*,int ,char*) ;

void TEP_PLUGIN_UNLOADER(struct tep_handle *tep)
{
 tep_unregister_print_function(tep, process_jbd2_dev_to_name,
          "jbd2_dev_to_name");

 tep_unregister_print_function(tep, process_jiffies_to_msecs,
          "jiffies_to_msecs");
}
