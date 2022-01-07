
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat_session {int stat_root; } ;
struct seq_file {struct stat_session* private; } ;
struct rb_node {int dummy; } ;
typedef int loff_t ;


 void* SEQ_START_TOKEN ;
 void* rb_first (int *) ;
 void* rb_next (struct rb_node*) ;

__attribute__((used)) static void *stat_seq_next(struct seq_file *s, void *p, loff_t *pos)
{
 struct stat_session *session = s->private;
 struct rb_node *node = p;

 (*pos)++;

 if (p == SEQ_START_TOKEN)
  return rb_first(&session->stat_root);

 return rb_next(node);
}
