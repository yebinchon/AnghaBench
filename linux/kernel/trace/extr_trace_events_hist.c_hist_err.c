
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct trace_array {int dummy; } ;


 int err_text ;
 int last_cmd ;
 int last_cmd_loc ;
 int tracing_log_err (struct trace_array*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void hist_err(struct trace_array *tr, u8 err_type, u8 err_pos)
{
 tracing_log_err(tr, last_cmd_loc, last_cmd, err_text,
   err_type, err_pos);
}
