
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef int loff_t ;


 int smack_known_list ;
 void* smk_seq_start (struct seq_file*,int *,int *) ;

__attribute__((used)) static void *cipso_seq_start(struct seq_file *s, loff_t *pos)
{
 return smk_seq_start(s, pos, &smack_known_list);
}
