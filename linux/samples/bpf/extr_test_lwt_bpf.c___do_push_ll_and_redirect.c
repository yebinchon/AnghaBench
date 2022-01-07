
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ethhdr {int h_dest; int h_source; int h_proto; } ;
struct __sk_buff {int dummy; } ;
typedef int ehdr ;


 int BPF_DROP ;
 int DST_IFINDEX ;
 int DST_MAC ;
 int ETH_P_IP ;
 int SRC_MAC ;
 int __constant_htons (int ) ;
 int bpf_redirect (int,int ) ;
 int bpf_skb_change_head (struct __sk_buff*,int,int ) ;
 int bpf_skb_store_bytes (struct __sk_buff*,int ,struct ethhdr*,int,int ) ;
 int memcpy (int *,int *,int) ;
 int printk (char*,int) ;

__attribute__((used)) static inline int __do_push_ll_and_redirect(struct __sk_buff *skb)
{
 uint64_t smac = SRC_MAC, dmac = DST_MAC;
 int ret, ifindex = DST_IFINDEX;
 struct ethhdr ehdr;

 ret = bpf_skb_change_head(skb, 14, 0);
 if (ret < 0) {
  printk("skb_change_head() failed: %d\n", ret);
 }

 ehdr.h_proto = __constant_htons(ETH_P_IP);
 memcpy(&ehdr.h_source, &smac, 6);
 memcpy(&ehdr.h_dest, &dmac, 6);

 ret = bpf_skb_store_bytes(skb, 0, &ehdr, sizeof(ehdr), 0);
 if (ret < 0) {
  printk("skb_store_bytes() failed: %d\n", ret);
  return BPF_DROP;
 }

 return bpf_redirect(ifindex, 0);
}
