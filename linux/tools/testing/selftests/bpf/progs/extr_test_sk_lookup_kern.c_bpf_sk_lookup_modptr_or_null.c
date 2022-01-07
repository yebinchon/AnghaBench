
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tuple ;
struct bpf_sock_tuple {int dummy; } ;
struct bpf_sock {int dummy; } ;
struct __sk_buff {int dummy; } ;
typedef int __u32 ;


 int BPF_F_CURRENT_NETNS ;
 struct bpf_sock* bpf_sk_lookup_tcp (struct __sk_buff*,struct bpf_sock_tuple*,int,int ,int ) ;
 int bpf_sk_release (struct bpf_sock*) ;

int bpf_sk_lookup_modptr_or_null(struct __sk_buff *skb)
{
 struct bpf_sock_tuple tuple = {};
 struct bpf_sock *sk;
 __u32 family;

 sk = bpf_sk_lookup_tcp(skb, &tuple, sizeof(tuple), BPF_F_CURRENT_NETNS, 0);
 sk += 1;
 if (sk)
  bpf_sk_release(sk);
 return 0;
}
