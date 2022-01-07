
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_struct {int unix_inflight; } ;
struct unix_sock {int link; int inflight; } ;
struct sock {int dummy; } ;
struct file {int dummy; } ;


 int BUG_ON (int) ;
 scalar_t__ atomic_long_dec_and_test (int *) ;
 int atomic_long_read (int *) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int unix_gc_lock ;
 struct sock* unix_get_socket (struct file*) ;
 struct unix_sock* unix_sk (struct sock*) ;
 int unix_tot_inflight ;

void unix_notinflight(struct user_struct *user, struct file *fp)
{
 struct sock *s = unix_get_socket(fp);

 spin_lock(&unix_gc_lock);

 if (s) {
  struct unix_sock *u = unix_sk(s);

  BUG_ON(!atomic_long_read(&u->inflight));
  BUG_ON(list_empty(&u->link));

  if (atomic_long_dec_and_test(&u->inflight))
   list_del_init(&u->link);
  unix_tot_inflight--;
 }
 user->unix_inflight--;
 spin_unlock(&unix_gc_lock);
}
