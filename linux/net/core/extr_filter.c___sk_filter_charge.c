
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sock {int sk_omem_alloc; } ;
struct sk_filter {TYPE_1__* prog; } ;
struct TYPE_2__ {int len; } ;


 int atomic_add (scalar_t__,int *) ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ bpf_prog_size (int ) ;
 scalar_t__ sysctl_optmem_max ;

__attribute__((used)) static bool __sk_filter_charge(struct sock *sk, struct sk_filter *fp)
{
 u32 filter_size = bpf_prog_size(fp->prog->len);


 if (filter_size <= sysctl_optmem_max &&
     atomic_read(&sk->sk_omem_alloc) + filter_size < sysctl_optmem_max) {
  atomic_add(filter_size, &sk->sk_omem_alloc);
  return 1;
 }
 return 0;
}
