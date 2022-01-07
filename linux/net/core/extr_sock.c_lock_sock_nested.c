
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int owned; int dep_map; int slock; } ;
struct sock {TYPE_1__ sk_lock; } ;


 int _RET_IP_ ;
 int __lock_sock (struct sock*) ;
 int local_bh_enable () ;
 int might_sleep () ;
 int mutex_acquire (int *,int,int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock (int *) ;

void lock_sock_nested(struct sock *sk, int subclass)
{
 might_sleep();
 spin_lock_bh(&sk->sk_lock.slock);
 if (sk->sk_lock.owned)
  __lock_sock(sk);
 sk->sk_lock.owned = 1;
 spin_unlock(&sk->sk_lock.slock);



 mutex_acquire(&sk->sk_lock.dep_map, subclass, 0, _RET_IP_);
 local_bh_enable();
}
