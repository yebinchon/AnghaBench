
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int total_size; int timestamp; int id; } ;
struct jr_code_close {TYPE_1__ p; } ;
typedef int rec ;
typedef int FILE ;


 int JIT_CODE_CLOSE ;
 int fclose (int *) ;
 int fwrite (struct jr_code_close*,int,int,int *) ;
 int perf_close_marker_file () ;
 int perf_get_timestamp () ;
 int warnx (char*) ;

int
jvmti_close(void *agent)
{
 struct jr_code_close rec;
 FILE *fp = agent;

 if (!fp) {
  warnx("jvmti: invalid fd in close_agent");
  return -1;
 }

 rec.p.id = JIT_CODE_CLOSE;
 rec.p.total_size = sizeof(rec);

 rec.p.timestamp = perf_get_timestamp();

 if (!fwrite(&rec, sizeof(rec), 1, fp))
  return -1;

 fclose(fp);

 fp = ((void*)0);

 perf_close_marker_file();

 return 0;
}
