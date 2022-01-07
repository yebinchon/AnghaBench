
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct policydb {char*** sym_val_to_name; } ;



__attribute__((used)) static inline char *sym_name(struct policydb *p, unsigned int sym_num, unsigned int element_nr)
{
 return p->sym_val_to_name[sym_num][element_nr];
}
