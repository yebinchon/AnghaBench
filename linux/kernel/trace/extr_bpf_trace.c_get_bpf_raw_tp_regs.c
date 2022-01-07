
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct bpf_raw_tp_regs {struct pt_regs* regs; } ;


 int ARRAY_SIZE (struct pt_regs*) ;
 int EBUSY ;
 struct pt_regs* ERR_PTR (int ) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int bpf_raw_tp_nest_level ;
 int bpf_raw_tp_regs ;
 int this_cpu_dec (int ) ;
 int this_cpu_inc_return (int ) ;
 struct bpf_raw_tp_regs* this_cpu_ptr (int *) ;

__attribute__((used)) static struct pt_regs *get_bpf_raw_tp_regs(void)
{
 struct bpf_raw_tp_regs *tp_regs = this_cpu_ptr(&bpf_raw_tp_regs);
 int nest_level = this_cpu_inc_return(bpf_raw_tp_nest_level);

 if (WARN_ON_ONCE(nest_level > ARRAY_SIZE(tp_regs->regs))) {
  this_cpu_dec(bpf_raw_tp_nest_level);
  return ERR_PTR(-EBUSY);
 }

 return &tp_regs->regs[nest_level - 1];
}
