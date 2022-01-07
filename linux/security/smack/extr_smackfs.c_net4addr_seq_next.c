
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef int loff_t ;


 int smk_net4addr_list ;
 void* smk_seq_next (struct seq_file*,void*,int *,int *) ;

__attribute__((used)) static void *net4addr_seq_next(struct seq_file *s, void *v, loff_t *pos)
{
 return smk_seq_next(s, v, pos, &smk_net4addr_list);
}
