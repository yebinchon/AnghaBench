
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unix_sock {int iolock; } ;
struct sock {int sk_peek_off; } ;


 int EINTR ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 struct unix_sock* unix_sk (struct sock*) ;

__attribute__((used)) static int unix_set_peek_off(struct sock *sk, int val)
{
 struct unix_sock *u = unix_sk(sk);

 if (mutex_lock_interruptible(&u->iolock))
  return -EINTR;

 sk->sk_peek_off = val;
 mutex_unlock(&u->iolock);

 return 0;
}
