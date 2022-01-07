
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
typedef int gfp_t ;


 int GFP_KERNEL ;
 scalar_t__ PAGE_SIZE ;
 int get_cmdline (struct task_struct*,char*,scalar_t__) ;
 int kfree (char*) ;
 char* kmalloc (scalar_t__,int ) ;
 char* kstrdup_quotable (char*,int ) ;

char *kstrdup_quotable_cmdline(struct task_struct *task, gfp_t gfp)
{
 char *buffer, *quoted;
 int i, res;

 buffer = kmalloc(PAGE_SIZE, GFP_KERNEL);
 if (!buffer)
  return ((void*)0);

 res = get_cmdline(task, buffer, PAGE_SIZE - 1);
 buffer[res] = '\0';


 while (--res >= 0 && buffer[res] == '\0')
  ;


 for (i = 0; i <= res; i++)
  if (buffer[i] == '\0')
   buffer[i] = ' ';


 quoted = kstrdup_quotable(buffer, gfp);
 kfree(buffer);
 return quoted;
}
