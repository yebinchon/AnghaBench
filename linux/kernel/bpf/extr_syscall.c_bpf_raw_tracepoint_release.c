
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct bpf_raw_tracepoint* private_data; } ;
struct bpf_raw_tracepoint {int btp; scalar_t__ prog; } ;


 int bpf_probe_unregister (int ,scalar_t__) ;
 int bpf_prog_put (scalar_t__) ;
 int bpf_put_raw_tracepoint (int ) ;
 int kfree (struct bpf_raw_tracepoint*) ;

__attribute__((used)) static int bpf_raw_tracepoint_release(struct inode *inode, struct file *filp)
{
 struct bpf_raw_tracepoint *raw_tp = filp->private_data;

 if (raw_tp->prog) {
  bpf_probe_unregister(raw_tp->btp, raw_tp->prog);
  bpf_prog_put(raw_tp->prog);
 }
 bpf_put_raw_tracepoint(raw_tp->btp);
 kfree(raw_tp);
 return 0;
}
