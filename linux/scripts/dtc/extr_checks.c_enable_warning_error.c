
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct check {int warn; int error; int num_prereqs; struct check** prereq; } ;



__attribute__((used)) static void enable_warning_error(struct check *c, bool warn, bool error)
{
 int i;


 if ((warn && !c->warn) || (error && !c->error))
  for (i = 0; i < c->num_prereqs; i++)
   enable_warning_error(c->prereq[i], warn, error);

 c->warn = c->warn || warn;
 c->error = c->error || error;
}
