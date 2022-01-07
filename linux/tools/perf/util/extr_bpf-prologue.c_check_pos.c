
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_insn_pos {scalar_t__ pos; scalar_t__ end; } ;


 int BPF_LOADER_ERRNO__PROLOGUE2BIG ;

__attribute__((used)) static int
check_pos(struct bpf_insn_pos *pos)
{
 if (!pos->pos || pos->pos >= pos->end)
  return -BPF_LOADER_ERRNO__PROLOGUE2BIG;
 return 0;
}
