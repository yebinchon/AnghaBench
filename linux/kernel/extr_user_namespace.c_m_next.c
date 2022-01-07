
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {TYPE_1__* op; } ;
typedef int loff_t ;
struct TYPE_2__ {void* (* start ) (struct seq_file*,int *) ;} ;


 void* stub1 (struct seq_file*,int *) ;

__attribute__((used)) static void *m_next(struct seq_file *seq, void *v, loff_t *pos)
{
 (*pos)++;
 return seq->op->start(seq, pos);
}
