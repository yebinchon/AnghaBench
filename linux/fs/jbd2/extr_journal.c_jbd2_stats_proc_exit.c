
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* j_devname; int j_proc_entry; } ;
typedef TYPE_1__ journal_t ;


 int proc_jbd2_stats ;
 int remove_proc_entry (char*,int ) ;

__attribute__((used)) static void jbd2_stats_proc_exit(journal_t *journal)
{
 remove_proc_entry("info", journal->j_proc_entry);
 remove_proc_entry(journal->j_devname, proc_jbd2_stats);
}
