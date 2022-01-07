
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct prog_test_def {scalar_t__ force_log; } ;
struct TYPE_2__ {scalar_t__ stdout; int log_cnt; char* log_buf; scalar_t__ verbose; } ;


 int SEEK_SET ;
 TYPE_1__ env ;
 int fflush (scalar_t__) ;
 int fprintf (scalar_t__,char*,...) ;
 int fseeko (scalar_t__,int ,int ) ;
 scalar_t__ stdout ;

__attribute__((used)) static void dump_test_log(const struct prog_test_def *test, bool failed)
{
 if (stdout == env.stdout)
  return;

 fflush(stdout);

 if (env.verbose || test->force_log || failed) {
  if (env.log_cnt) {
   env.log_buf[env.log_cnt] = '\0';
   fprintf(env.stdout, "%s", env.log_buf);
   if (env.log_buf[env.log_cnt - 1] != '\n')
    fprintf(env.stdout, "\n");
  }
 }

 fseeko(stdout, 0, SEEK_SET);
}
