
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saved_cmdlines_buffer {struct saved_cmdlines_buffer* map_cmdline_to_pid; struct saved_cmdlines_buffer* saved_cmdlines; } ;


 int kfree (struct saved_cmdlines_buffer*) ;

__attribute__((used)) static void free_saved_cmdlines_buffer(struct saved_cmdlines_buffer *s)
{
 kfree(s->saved_cmdlines);
 kfree(s->map_cmdline_to_pid);
 kfree(s);
}
