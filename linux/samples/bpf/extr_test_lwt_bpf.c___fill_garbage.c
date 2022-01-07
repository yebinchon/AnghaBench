
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct __sk_buff {int dummy; } ;
typedef int f ;


 int bpf_skb_store_bytes (struct __sk_buff*,int,int*,int,int ) ;

__attribute__((used)) static inline void __fill_garbage(struct __sk_buff *skb)
{
 uint64_t f = 0xFFFFFFFFFFFFFFFF;

 bpf_skb_store_bytes(skb, 0, &f, sizeof(f), 0);
 bpf_skb_store_bytes(skb, 8, &f, sizeof(f), 0);
 bpf_skb_store_bytes(skb, 16, &f, sizeof(f), 0);
 bpf_skb_store_bytes(skb, 24, &f, sizeof(f), 0);
 bpf_skb_store_bytes(skb, 32, &f, sizeof(f), 0);
 bpf_skb_store_bytes(skb, 40, &f, sizeof(f), 0);
 bpf_skb_store_bytes(skb, 48, &f, sizeof(f), 0);
 bpf_skb_store_bytes(skb, 56, &f, sizeof(f), 0);
 bpf_skb_store_bytes(skb, 64, &f, sizeof(f), 0);
 bpf_skb_store_bytes(skb, 72, &f, sizeof(f), 0);
 bpf_skb_store_bytes(skb, 80, &f, sizeof(f), 0);
 bpf_skb_store_bytes(skb, 88, &f, sizeof(f), 0);
}
