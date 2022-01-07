
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int __bpf_try_make_writable (struct sk_buff*,unsigned int) ;
 int bpf_compute_data_pointers (struct sk_buff*) ;

__attribute__((used)) static inline int bpf_try_make_writable(struct sk_buff *skb,
     unsigned int write_len)
{
 int err = __bpf_try_make_writable(skb, write_len);

 bpf_compute_data_pointers(skb);
 return err;
}
