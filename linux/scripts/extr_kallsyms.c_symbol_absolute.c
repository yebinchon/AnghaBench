
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym_entry {int percpu_absolute; } ;



__attribute__((used)) static int symbol_absolute(struct sym_entry *s)
{
 return s->percpu_absolute;
}
