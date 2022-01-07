
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct check {int warn; int error; int num_prereqs; struct check** prereq; } ;


 int ARRAY_SIZE (struct check**) ;
 struct check** check_table ;

__attribute__((used)) static void disable_warning_error(struct check *c, bool warn, bool error)
{
 int i;



 if ((warn && c->warn) || (error && c->error)) {
  for (i = 0; i < ARRAY_SIZE(check_table); i++) {
   struct check *cc = check_table[i];
   int j;

   for (j = 0; j < cc->num_prereqs; j++)
    if (cc->prereq[j] == c)
     disable_warning_error(cc, warn, error);
  }
 }

 c->warn = c->warn && !warn;
 c->error = c->error && !error;
}
