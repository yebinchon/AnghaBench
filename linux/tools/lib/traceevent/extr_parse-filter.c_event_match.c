
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_event {int name; int system; } ;
typedef int regex_t ;


 int regexec (int *,int ,int ,int *,int ) ;

__attribute__((used)) static int event_match(struct tep_event *event,
         regex_t *sreg, regex_t *ereg)
{
 if (sreg) {
  return !regexec(sreg, event->system, 0, ((void*)0), 0) &&
   !regexec(ereg, event->name, 0, ((void*)0), 0);
 }

 return !regexec(ereg, event->system, 0, ((void*)0), 0) ||
  !regexec(ereg, event->name, 0, ((void*)0), 0);
}
