
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int __unix_remove_socket (struct sock*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int unix_table_lock ;

__attribute__((used)) static inline void unix_remove_socket(struct sock *sk)
{
 spin_lock(&unix_table_lock);
 __unix_remove_socket(sk);
 spin_unlock(&unix_table_lock);
}
