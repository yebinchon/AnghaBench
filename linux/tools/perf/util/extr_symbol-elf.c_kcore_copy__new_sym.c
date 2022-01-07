
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sym_data {int node; int addr; } ;
struct kcore_copy_info {int syms; } ;


 int list_add_tail (int *,int *) ;
 struct sym_data* zalloc (int) ;

__attribute__((used)) static struct sym_data *kcore_copy__new_sym(struct kcore_copy_info *kci,
         u64 addr)
{
 struct sym_data *s = zalloc(sizeof(*s));

 if (s) {
  s->addr = addr;
  list_add_tail(&s->node, &kci->syms);
 }

 return s;
}
