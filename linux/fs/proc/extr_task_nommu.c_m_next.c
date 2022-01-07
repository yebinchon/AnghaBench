
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct rb_node {int dummy; } ;
typedef int loff_t ;


 void* rb_next (struct rb_node*) ;

__attribute__((used)) static void *m_next(struct seq_file *m, void *_p, loff_t *pos)
{
 struct rb_node *p = _p;

 (*pos)++;
 return p ? rb_next(p) : ((void*)0);
}
