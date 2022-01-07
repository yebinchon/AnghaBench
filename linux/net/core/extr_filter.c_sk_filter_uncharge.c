
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sock {int sk_omem_alloc; } ;
struct sk_filter {TYPE_1__* prog; } ;
struct TYPE_2__ {int len; } ;


 int atomic_sub (int ,int *) ;
 int bpf_prog_size (int ) ;
 int sk_filter_release (struct sk_filter*) ;

void sk_filter_uncharge(struct sock *sk, struct sk_filter *fp)
{
 u32 filter_size = bpf_prog_size(fp->prog->len);

 atomic_sub(filter_size, &sk->sk_omem_alloc);
 sk_filter_release(fp);
}
