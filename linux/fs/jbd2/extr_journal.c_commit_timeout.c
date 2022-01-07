
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_4__ {int j_task; } ;
typedef TYPE_1__ journal_t ;


 TYPE_1__* from_timer (int ,struct timer_list*,int ) ;
 int j_commit_timer ;
 TYPE_1__* journal ;
 int wake_up_process (int ) ;

__attribute__((used)) static void commit_timeout(struct timer_list *t)
{
 journal_t *journal = from_timer(journal, t, j_commit_timer);

 wake_up_process(journal->j_task);
}
