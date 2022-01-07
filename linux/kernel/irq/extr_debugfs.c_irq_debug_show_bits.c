
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct irq_bit_descr {unsigned int mask; int name; } ;


 int seq_printf (struct seq_file*,char*,int,char*,int ) ;

__attribute__((used)) static void irq_debug_show_bits(struct seq_file *m, int ind, unsigned int state,
    const struct irq_bit_descr *sd, int size)
{
 int i;

 for (i = 0; i < size; i++, sd++) {
  if (state & sd->mask)
   seq_printf(m, "%*s%s\n", ind + 12, "", sd->name);
 }
}
