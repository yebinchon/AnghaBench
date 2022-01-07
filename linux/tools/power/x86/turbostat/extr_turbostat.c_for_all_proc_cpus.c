
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int err (int,char*,int ) ;
 int fclose (int *) ;
 int * fopen_or_die (int ,char*) ;
 int fscanf (int *,char*,...) ;
 int proc_stat ;

int for_all_proc_cpus(int (func)(int))
{
 FILE *fp;
 int cpu_num;
 int retval;

 fp = fopen_or_die(proc_stat, "r");

 retval = fscanf(fp, "cpu %*d %*d %*d %*d %*d %*d %*d %*d %*d %*d\n");
 if (retval != 0)
  err(1, "%s: failed to parse format", proc_stat);

 while (1) {
  retval = fscanf(fp, "cpu%u %*d %*d %*d %*d %*d %*d %*d %*d %*d %*d\n", &cpu_num);
  if (retval != 1)
   break;

  retval = func(cpu_num);
  if (retval) {
   fclose(fp);
   return(retval);
  }
 }
 fclose(fp);
 return 0;
}
