
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_2__ {int version; int release; int sysname; } ;


 int linux_proc_banner ;
 int seq_printf (struct seq_file*,int ,int ,int ,int ) ;
 TYPE_1__* utsname () ;

__attribute__((used)) static int version_proc_show(struct seq_file *m, void *v)
{
 seq_printf(m, linux_proc_banner,
  utsname()->sysname,
  utsname()->release,
  utsname()->version);
 return 0;
}
