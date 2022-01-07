
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_omem_alloc; } ;


 int ENOMEM ;
 int atomic_add (unsigned int,int *) ;
 unsigned int atomic_read (int *) ;
 unsigned int sysctl_optmem_max ;

__attribute__((used)) static int omem_charge(struct sock *sk, unsigned int size)
{

 if (size <= sysctl_optmem_max &&
     atomic_read(&sk->sk_omem_alloc) + size < sysctl_optmem_max) {
  atomic_add(size, &sk->sk_omem_alloc);
  return 0;
 }

 return -ENOMEM;
}
