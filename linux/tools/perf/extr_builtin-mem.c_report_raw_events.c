
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int env; } ;
struct perf_session {TYPE_1__ header; } ;
struct perf_mem {scalar_t__ phys_addr; int cpu_bitmap; int cpu_list; int tool; int force; } ;
struct perf_data {int force; int mode; int path; } ;


 scalar_t__ IS_ERR (struct perf_session*) ;
 int PERF_DATA_MODE_READ ;
 int PTR_ERR (struct perf_session*) ;
 int input_name ;
 int perf_session__cpu_bitmap (struct perf_session*,int ,int ) ;
 int perf_session__delete (struct perf_session*) ;
 struct perf_session* perf_session__new (struct perf_data*,int,int *) ;
 int perf_session__process_events (struct perf_session*) ;
 int printf (char*) ;
 int symbol__init (int *) ;

__attribute__((used)) static int report_raw_events(struct perf_mem *mem)
{
 struct perf_data data = {
  .path = input_name,
  .mode = PERF_DATA_MODE_READ,
  .force = mem->force,
 };
 int ret;
 struct perf_session *session = perf_session__new(&data, 0,
        &mem->tool);

 if (IS_ERR(session))
  return PTR_ERR(session);

 if (mem->cpu_list) {
  ret = perf_session__cpu_bitmap(session, mem->cpu_list,
            mem->cpu_bitmap);
  if (ret < 0)
   goto out_delete;
 }

 ret = symbol__init(&session->header.env);
 if (ret < 0)
  goto out_delete;

 if (mem->phys_addr)
  printf("# PID, TID, IP, ADDR, PHYS ADDR, LOCAL WEIGHT, DSRC, SYMBOL\n");
 else
  printf("# PID, TID, IP, ADDR, LOCAL WEIGHT, DSRC, SYMBOL\n");

 ret = perf_session__process_events(session);

out_delete:
 perf_session__delete(session);
 return ret;
}
