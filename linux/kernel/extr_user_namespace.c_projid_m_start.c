
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_namespace {int projid_map; } ;
struct seq_file {struct user_namespace* private; } ;
typedef int loff_t ;


 void* m_start (struct seq_file*,int *,int *) ;

__attribute__((used)) static void *projid_m_start(struct seq_file *seq, loff_t *ppos)
{
 struct user_namespace *ns = seq->private;

 return m_start(seq, ppos, &ns->projid_map);
}
