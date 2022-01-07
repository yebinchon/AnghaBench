
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int x ;
struct bpf_xfrm_state {int remote_ipv4; int spi; int reqid; } ;
struct __sk_buff {int dummy; } ;
typedef int fmt ;


 int TC_ACT_OK ;
 int bpf_ntohl (int ) ;
 int bpf_skb_get_xfrm_state (struct __sk_buff*,int ,struct bpf_xfrm_state*,int,int ) ;
 int bpf_trace_printk (char*,int,int ,int ,int ) ;

int _xfrm_get_state(struct __sk_buff *skb)
{
 struct bpf_xfrm_state x;
 char fmt[] = "reqid %d spi 0x%x remote ip 0x%x\n";
 int ret;

 ret = bpf_skb_get_xfrm_state(skb, 0, &x, sizeof(x), 0);
 if (ret < 0)
  return TC_ACT_OK;

 bpf_trace_printk(fmt, sizeof(fmt), x.reqid, bpf_ntohl(x.spi),
    bpf_ntohl(x.remote_ipv4));
 return TC_ACT_OK;
}
