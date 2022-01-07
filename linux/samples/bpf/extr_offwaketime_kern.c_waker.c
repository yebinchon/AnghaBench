
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wokeby_t {int ret; int name; } ;
struct task_struct {int pid; } ;
struct pt_regs {int dummy; } ;


 int BPF_ANY ;
 scalar_t__ PT_REGS_PARM1 (struct pt_regs*) ;
 int STACKID_FLAGS ;
 int _ (int ) ;
 int bpf_get_current_comm (int *,int) ;
 int bpf_get_stackid (struct pt_regs*,int *,int ) ;
 int bpf_map_update_elem (int *,int *,struct wokeby_t*,int ) ;
 int stackmap ;
 int wokeby ;

int waker(struct pt_regs *ctx)
{
 struct task_struct *p = (void *) PT_REGS_PARM1(ctx);
 struct wokeby_t woke;
 u32 pid;

 pid = _(p->pid);

 bpf_get_current_comm(&woke.name, sizeof(woke.name));
 woke.ret = bpf_get_stackid(ctx, &stackmap, STACKID_FLAGS);

 bpf_map_update_elem(&wokeby, &pid, &woke, BPF_ANY);
 return 0;
}
