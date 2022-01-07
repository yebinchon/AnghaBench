
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int dummy; } ;


 int TEP_FUNC_ARG_INT ;
 int TEP_FUNC_ARG_LONG ;
 int TEP_FUNC_ARG_STRING ;
 int TEP_FUNC_ARG_VOID ;
 int process_jbd2_dev_to_name ;
 int process_jiffies_to_msecs ;
 int tep_register_print_function (struct tep_handle*,int ,int ,char*,int ,int ) ;

int TEP_PLUGIN_LOADER(struct tep_handle *tep)
{
 tep_register_print_function(tep,
        process_jbd2_dev_to_name,
        TEP_FUNC_ARG_STRING,
        "jbd2_dev_to_name",
        TEP_FUNC_ARG_INT,
        TEP_FUNC_ARG_VOID);

 tep_register_print_function(tep,
        process_jiffies_to_msecs,
        TEP_FUNC_ARG_LONG,
        "jiffies_to_msecs",
        TEP_FUNC_ARG_LONG,
        TEP_FUNC_ARG_VOID);
 return 0;
}
