
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int CAN_VERSION_STRING ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int can_version_proc_show(struct seq_file *m, void *v)
{
 seq_printf(m, "%s\n", CAN_VERSION_STRING);
 return 0;
}
