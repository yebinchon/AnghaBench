
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct branch_flags {scalar_t__ mispred; int predicted; } ;


 int scnprintf (char*,int,char*,char*) ;

__attribute__((used)) static int get_br_mspred(struct branch_flags *flags, char *bf, int size)
{
 if (!flags->mispred && !flags->predicted)
  return scnprintf(bf, size, "%s", "-");

 if (flags->mispred)
  return scnprintf(bf, size, "%s", "M");

 return scnprintf(bf, size, "%s", "P");
}
