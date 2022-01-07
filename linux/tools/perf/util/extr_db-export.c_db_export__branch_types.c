
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct db_export {int dummy; } ;
typedef int buf ;
struct TYPE_2__ {char* name; int branch_type; } ;


 int PERF_IP_FLAG_BRANCH ;
 int PERF_IP_FLAG_TRACE_BEGIN ;
 int PERF_IP_FLAG_TRACE_END ;
 TYPE_1__* branch_types ;
 int db_export__branch_type (struct db_export*,int,char*) ;
 int snprintf (char*,int,char*,char const*) ;

int db_export__branch_types(struct db_export *dbe)
{
 int i, err = 0;

 for (i = 0; branch_types[i].name ; i++) {
  err = db_export__branch_type(dbe, branch_types[i].branch_type,
          branch_types[i].name);
  if (err)
   break;
 }


 for (i = 0; branch_types[i].name ; i++) {
  const char *name = branch_types[i].name;
  u32 type = branch_types[i].branch_type;
  char buf[64];

  if (type == PERF_IP_FLAG_BRANCH ||
      (type & (PERF_IP_FLAG_TRACE_BEGIN | PERF_IP_FLAG_TRACE_END)))
   continue;

  snprintf(buf, sizeof(buf), "trace begin / %s", name);
  err = db_export__branch_type(dbe, type | PERF_IP_FLAG_TRACE_BEGIN, buf);
  if (err)
   break;

  snprintf(buf, sizeof(buf), "%s / trace end", name);
  err = db_export__branch_type(dbe, type | PERF_IP_FLAG_TRACE_END, buf);
  if (err)
   break;
 }

 return err;
}
