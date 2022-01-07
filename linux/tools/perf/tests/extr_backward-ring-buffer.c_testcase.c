
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int proc_name ;


 int NR_ITERS ;
 int PR_SET_NAME ;
 int prctl (int ,char*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void testcase(void)
{
 int i;

 for (i = 0; i < NR_ITERS; i++) {
  char proc_name[15];

  snprintf(proc_name, sizeof(proc_name), "p:%d\n", i);
  prctl(PR_SET_NAME, proc_name);
 }
}
