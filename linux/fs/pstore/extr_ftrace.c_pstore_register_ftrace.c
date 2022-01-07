
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int write; } ;


 int debugfs_create_dir (char*,int *) ;
 int debugfs_create_file (char*,int,int ,int *,int *) ;
 TYPE_1__* psinfo ;
 int pstore_ftrace_dir ;
 int pstore_knob_fops ;

void pstore_register_ftrace(void)
{
 if (!psinfo->write)
  return;

 pstore_ftrace_dir = debugfs_create_dir("pstore", ((void*)0));

 debugfs_create_file("record_ftrace", 0600, pstore_ftrace_dir, ((void*)0),
       &pstore_knob_fops);
}
