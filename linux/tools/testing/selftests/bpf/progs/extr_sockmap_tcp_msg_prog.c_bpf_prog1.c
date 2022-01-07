
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_msg_md {scalar_t__ data; scalar_t__ data_end; } ;
typedef scalar_t__ __u64 ;


 int SK_DROP ;
 int SK_PASS ;
 int bpf_printk (char*,char,...) ;

int bpf_prog1(struct sk_msg_md *msg)
{
 void *data_end = (void *)(long) msg->data_end;
 void *data = (void *)(long) msg->data;

 char *d;

 if (data + 8 > data_end)
  return SK_DROP;

 bpf_printk("data length %i\n", (__u64)msg->data_end - (__u64)msg->data);
 d = (char *)data;
 bpf_printk("hello sendmsg hook %i %i\n", d[0], d[1]);

 return SK_PASS;
}
