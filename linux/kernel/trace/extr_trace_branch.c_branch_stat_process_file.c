
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftrace_branch_data {char* file; } ;


 int strlen (char*) ;

__attribute__((used)) static const char *branch_stat_process_file(struct ftrace_branch_data *p)
{
 const char *f;


 f = p->file + strlen(p->file);
 while (f >= p->file && *f != '/')
  f--;
 return ++f;
}
