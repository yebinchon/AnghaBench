
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct console {void* next; } ;
typedef int loff_t ;



__attribute__((used)) static void *c_next(struct seq_file *m, void *v, loff_t *pos)
{
 struct console *con = v;
 ++*pos;
 return con->next;
}
