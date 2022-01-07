
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int dummy; } ;


 int process_scsi_trace_parse_cdb ;
 int tep_unregister_print_function (struct tep_handle*,int ,char*) ;

void TEP_PLUGIN_UNLOADER(struct tep_handle *tep)
{
 tep_unregister_print_function(tep, process_scsi_trace_parse_cdb,
          "scsi_trace_parse_cdb");
}
