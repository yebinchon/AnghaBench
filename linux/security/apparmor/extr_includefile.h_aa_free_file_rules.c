
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_file_rules {int trans; int dfa; } ;


 int aa_free_domain_entries (int *) ;
 int aa_put_dfa (int ) ;

__attribute__((used)) static inline void aa_free_file_rules(struct aa_file_rules *rules)
{
 aa_put_dfa(rules->dfa);
 aa_free_domain_entries(&rules->trans);
}
