
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int size; int count; } ;



__attribute__((used)) static void seq_set_overflow(struct seq_file *m)
{
 m->count = m->size;
}
