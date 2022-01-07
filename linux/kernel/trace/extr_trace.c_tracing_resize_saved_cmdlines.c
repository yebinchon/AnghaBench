
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saved_cmdlines_buffer {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ allocate_cmdlines_buffer (unsigned int,struct saved_cmdlines_buffer*) ;
 int arch_spin_lock (int *) ;
 int arch_spin_unlock (int *) ;
 int free_saved_cmdlines_buffer (struct saved_cmdlines_buffer*) ;
 int kfree (struct saved_cmdlines_buffer*) ;
 struct saved_cmdlines_buffer* kmalloc (int,int ) ;
 struct saved_cmdlines_buffer* savedcmd ;
 int trace_cmdline_lock ;

__attribute__((used)) static int tracing_resize_saved_cmdlines(unsigned int val)
{
 struct saved_cmdlines_buffer *s, *savedcmd_temp;

 s = kmalloc(sizeof(*s), GFP_KERNEL);
 if (!s)
  return -ENOMEM;

 if (allocate_cmdlines_buffer(val, s) < 0) {
  kfree(s);
  return -ENOMEM;
 }

 arch_spin_lock(&trace_cmdline_lock);
 savedcmd_temp = savedcmd;
 savedcmd = s;
 arch_spin_unlock(&trace_cmdline_lock);
 free_saved_cmdlines_buffer(savedcmd_temp);

 return 0;
}
