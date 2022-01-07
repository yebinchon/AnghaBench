
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ext4_sb_info {TYPE_1__* s_journal; } ;
typedef int ssize_t ;
struct TYPE_2__ {int j_task; } ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,...) ;
 int task_pid_vnr (int ) ;

__attribute__((used)) static ssize_t journal_task_show(struct ext4_sb_info *sbi, char *buf)
{
 if (!sbi->s_journal)
  return snprintf(buf, PAGE_SIZE, "<none>\n");
 return snprintf(buf, PAGE_SIZE, "%d\n",
   task_pid_vnr(sbi->s_journal->j_task));
}
