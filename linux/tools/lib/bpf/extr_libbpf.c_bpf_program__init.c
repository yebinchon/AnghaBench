
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nr; int * fds; } ;
struct bpf_program {size_t insns_cnt; int idx; int type; TYPE_1__ instances; int insns; int pin_name; int section_name; } ;
struct bpf_insn {int dummy; } ;


 int BPF_PROG_TYPE_UNSPEC ;
 int EINVAL ;
 int ENOMEM ;
 int __bpf_program__pin_name (struct bpf_program*) ;
 int bpf_program__exit (struct bpf_program*) ;
 int malloc (size_t) ;
 int memcpy (int ,void*,size_t) ;
 int memset (struct bpf_program*,int ,int) ;
 int pr_warning (char*,...) ;
 int strdup (char*) ;

__attribute__((used)) static int
bpf_program__init(void *data, size_t size, char *section_name, int idx,
    struct bpf_program *prog)
{
 const size_t bpf_insn_sz = sizeof(struct bpf_insn);

 if (size == 0 || size % bpf_insn_sz) {
  pr_warning("corrupted section '%s', size: %zu\n",
      section_name, size);
  return -EINVAL;
 }

 memset(prog, 0, sizeof(*prog));

 prog->section_name = strdup(section_name);
 if (!prog->section_name) {
  pr_warning("failed to alloc name for prog under section(%d) %s\n",
      idx, section_name);
  goto errout;
 }

 prog->pin_name = __bpf_program__pin_name(prog);
 if (!prog->pin_name) {
  pr_warning("failed to alloc pin name for prog under section(%d) %s\n",
      idx, section_name);
  goto errout;
 }

 prog->insns = malloc(size);
 if (!prog->insns) {
  pr_warning("failed to alloc insns for prog under section %s\n",
      section_name);
  goto errout;
 }
 prog->insns_cnt = size / bpf_insn_sz;
 memcpy(prog->insns, data, size);
 prog->idx = idx;
 prog->instances.fds = ((void*)0);
 prog->instances.nr = -1;
 prog->type = BPF_PROG_TYPE_UNSPEC;

 return 0;
errout:
 bpf_program__exit(prog);
 return -ENOMEM;
}
