
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; int dev; } ;
struct pt_regs {int dummy; } ;
struct net_device {int name; } ;
typedef int fmt ;
typedef int devname ;


 int IFNAMSIZ ;
 scalar_t__ PT_REGS_PARM1 (struct pt_regs*) ;
 void* _ (int ) ;
 int bpf_probe_read (char*,int,int ) ;
 int bpf_trace_printk (char*,int,struct sk_buff*,int) ;

int bpf_prog1(struct pt_regs *ctx)
{



 char devname[IFNAMSIZ];
 struct net_device *dev;
 struct sk_buff *skb;
 int len;


 skb = (struct sk_buff *) PT_REGS_PARM1(ctx);
 dev = _(skb->dev);
 len = _(skb->len);

 bpf_probe_read(devname, sizeof(devname), dev->name);

 if (devname[0] == 'l' && devname[1] == 'o') {
  char fmt[] = "skb %p len %d\n";

  bpf_trace_printk(fmt, sizeof(fmt), skb, len);
 }

 return 0;
}
