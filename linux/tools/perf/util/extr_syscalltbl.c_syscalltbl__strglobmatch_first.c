
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscalltbl {int dummy; } ;


 int syscalltbl__strglobmatch_next (struct syscalltbl*,char const*,int*) ;

int syscalltbl__strglobmatch_first(struct syscalltbl *tbl, const char *syscall_glob, int *idx)
{
 return syscalltbl__strglobmatch_next(tbl, syscall_glob, idx);
}
