
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bug_on_assert; } ;


 int BUG () ;
 int WARN_ON (int) ;
 int xfs_emerg (int *,char*,char*,char*,int) ;
 TYPE_1__ xfs_globals ;

void
assfail(char *expr, char *file, int line)
{
 xfs_emerg(((void*)0), "Assertion failed: %s, file: %s, line: %d",
  expr, file, line);
 if (xfs_globals.bug_on_assert)
  BUG();
 else
  WARN_ON(1);
}
