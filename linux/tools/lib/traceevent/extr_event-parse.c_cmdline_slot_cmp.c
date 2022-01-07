
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_cmdline {scalar_t__ pid; } ;



__attribute__((used)) static int cmdline_slot_cmp(const void *a, const void *b)
{
 const struct tep_cmdline *ca = a;
 const struct tep_cmdline *cb = b;
 const struct tep_cmdline *cb1 = cb + 1;

 if (ca->pid < cb->pid)
  return -1;

 if (ca->pid > cb->pid) {
  if (ca->pid <= cb1->pid)
   return 0;
  return 1;
 }

 return 0;
}
