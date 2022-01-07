
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saved_cmdlines_buffer {unsigned int cmdline_num; int * map_cmdline_to_pid; int map_pid_to_cmdline; scalar_t__ cmdline_idx; void* saved_cmdlines; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NO_CMDLINE_MAP ;
 unsigned int TASK_COMM_LEN ;
 int kfree (int *) ;
 void* kmalloc_array (unsigned int,unsigned int,int ) ;
 int memset (int *,int ,unsigned int) ;

__attribute__((used)) static int allocate_cmdlines_buffer(unsigned int val,
        struct saved_cmdlines_buffer *s)
{
 s->map_cmdline_to_pid = kmalloc_array(val,
           sizeof(*s->map_cmdline_to_pid),
           GFP_KERNEL);
 if (!s->map_cmdline_to_pid)
  return -ENOMEM;

 s->saved_cmdlines = kmalloc_array(TASK_COMM_LEN, val, GFP_KERNEL);
 if (!s->saved_cmdlines) {
  kfree(s->map_cmdline_to_pid);
  return -ENOMEM;
 }

 s->cmdline_idx = 0;
 s->cmdline_num = val;
 memset(&s->map_pid_to_cmdline, NO_CMDLINE_MAP,
        sizeof(s->map_pid_to_cmdline));
 memset(s->map_cmdline_to_pid, NO_CMDLINE_MAP,
        val * sizeof(*s->map_cmdline_to_pid));

 return 0;
}
