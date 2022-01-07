
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {scalar_t__ debugfs_file; } ;


 scalar_t__ debugfs_create_file (char*,int,int ,struct irq_desc*,int *) ;
 int dfs_irq_ops ;
 int irq_dir ;
 int sprintf (char*,char*,unsigned int) ;

void irq_add_debugfs_entry(unsigned int irq, struct irq_desc *desc)
{
 char name [10];

 if (!irq_dir || !desc || desc->debugfs_file)
  return;

 sprintf(name, "%d", irq);
 desc->debugfs_file = debugfs_create_file(name, 0644, irq_dir, desc,
       &dfs_irq_ops);
}
