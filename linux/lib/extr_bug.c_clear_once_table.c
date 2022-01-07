
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bug_entry {int flags; } ;


 int BUGFLAG_DONE ;

__attribute__((used)) static void clear_once_table(struct bug_entry *start, struct bug_entry *end)
{
 struct bug_entry *bug;

 for (bug = start; bug < end; bug++)
  bug->flags &= ~BUGFLAG_DONE;
}
