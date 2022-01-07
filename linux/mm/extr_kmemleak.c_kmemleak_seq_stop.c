
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int IS_ERR (void*) ;
 int mutex_unlock (int *) ;
 int put_object (void*) ;
 int rcu_read_unlock () ;
 int scan_mutex ;

__attribute__((used)) static void kmemleak_seq_stop(struct seq_file *seq, void *v)
{
 if (!IS_ERR(v)) {




  rcu_read_unlock();
  mutex_unlock(&scan_mutex);
  if (v)
   put_object(v);
 }
}
