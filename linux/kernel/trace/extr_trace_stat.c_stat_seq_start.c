
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat_session {int stat_root; TYPE_1__* ts; int stat_mutex; } ;
struct seq_file {struct stat_session* private; } ;
typedef void rb_node ;
typedef int loff_t ;
struct TYPE_2__ {scalar_t__ stat_headers; } ;


 void* SEQ_START_TOKEN ;
 int mutex_lock (int *) ;
 void* rb_first (int *) ;
 void* rb_next (void*) ;

__attribute__((used)) static void *stat_seq_start(struct seq_file *s, loff_t *pos)
{
 struct stat_session *session = s->private;
 struct rb_node *node;
 int n = *pos;
 int i;


 mutex_lock(&session->stat_mutex);


 if (session->ts->stat_headers) {
  if (n == 0)
   return SEQ_START_TOKEN;
  n--;
 }

 node = rb_first(&session->stat_root);
 for (i = 0; node && i < n; i++)
  node = rb_next(node);

 return node;
}
