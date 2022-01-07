
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_psock {int * sk; } ;
struct sk_buff {int * sk; } ;
struct bpf_prog {int dummy; } ;


 int BPF_PROG_RUN (struct bpf_prog*,struct sk_buff*) ;
 int bpf_compute_data_end_sk_skb (struct sk_buff*) ;
 int preempt_disable () ;
 int preempt_enable () ;

__attribute__((used)) static int sk_psock_bpf_run(struct sk_psock *psock, struct bpf_prog *prog,
       struct sk_buff *skb)
{
 int ret;

 skb->sk = psock->sk;
 bpf_compute_data_end_sk_skb(skb);
 preempt_disable();
 ret = BPF_PROG_RUN(prog, skb);
 preempt_enable();






 skb->sk = ((void*)0);
 return ret;
}
