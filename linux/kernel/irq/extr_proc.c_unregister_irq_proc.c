
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dir; } ;


 int MAX_NAMELEN ;
 int remove_proc_entry (char*,int ) ;
 int root_irq_dir ;
 int sprintf (char*,char*,unsigned int) ;

void unregister_irq_proc(unsigned int irq, struct irq_desc *desc)
{
 char name [MAX_NAMELEN];

 if (!root_irq_dir || !desc->dir)
  return;
 remove_proc_entry("spurious", desc->dir);

 sprintf(name, "%u", irq);
 remove_proc_entry(name, root_irq_dir);
}
