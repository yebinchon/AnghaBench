
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_ON (int) ;
 int xfs_warn (int *,char*,char*,char*,int) ;

void
asswarn(char *expr, char *file, int line)
{
 xfs_warn(((void*)0), "Assertion failed: %s, file: %s, line: %d",
  expr, file, line);
 WARN_ON(1);
}
