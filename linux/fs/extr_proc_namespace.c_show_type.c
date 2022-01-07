
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {scalar_t__ s_subtype; TYPE_1__* s_type; } ;
struct seq_file {int dummy; } ;
struct TYPE_2__ {scalar_t__ name; } ;


 int mangle (struct seq_file*,scalar_t__) ;
 int seq_putc (struct seq_file*,char) ;

__attribute__((used)) static void show_type(struct seq_file *m, struct super_block *sb)
{
 mangle(m, sb->s_type->name);
 if (sb->s_subtype) {
  seq_putc(m, '.');
  mangle(m, sb->s_subtype);
 }
}
