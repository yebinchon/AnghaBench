
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int dummy; } ;


 int TEP_FUNC_ARG_INT ;
 int TEP_FUNC_ARG_PTR ;
 int TEP_FUNC_ARG_STRING ;
 int TEP_FUNC_ARG_VOID ;
 int process_scsi_trace_parse_cdb ;
 int tep_register_print_function (struct tep_handle*,int ,int ,char*,int ,int ,int ,int ) ;

int TEP_PLUGIN_LOADER(struct tep_handle *tep)
{
 tep_register_print_function(tep,
        process_scsi_trace_parse_cdb,
        TEP_FUNC_ARG_STRING,
        "scsi_trace_parse_cdb",
        TEP_FUNC_ARG_PTR,
        TEP_FUNC_ARG_PTR,
        TEP_FUNC_ARG_INT,
        TEP_FUNC_ARG_VOID);
 return 0;
}
