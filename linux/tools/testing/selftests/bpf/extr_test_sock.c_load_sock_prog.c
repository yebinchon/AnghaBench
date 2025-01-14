
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_load_program_attr {int expected_attach_type; char* license; int log_level; struct bpf_insn const* insns; int insns_cnt; int prog_type; } ;
struct bpf_insn {int dummy; } ;
typedef enum bpf_attach_type { ____Placeholder_bpf_attach_type } bpf_attach_type ;


 int BPF_LOG_BUF_SIZE ;
 int BPF_PROG_TYPE_CGROUP_SOCK ;
 int bpf_load_program_xattr (struct bpf_load_program_attr*,char*,int ) ;
 char* bpf_log_buf ;
 int fprintf (int ,char*,char*) ;
 int memset (struct bpf_load_program_attr*,int ,int) ;
 int probe_prog_length (struct bpf_insn const*) ;
 int stderr ;
 scalar_t__ verbose ;

__attribute__((used)) static int load_sock_prog(const struct bpf_insn *prog,
     enum bpf_attach_type attach_type)
{
 struct bpf_load_program_attr attr;
 int ret;

 memset(&attr, 0, sizeof(struct bpf_load_program_attr));
 attr.prog_type = BPF_PROG_TYPE_CGROUP_SOCK;
 attr.expected_attach_type = attach_type;
 attr.insns = prog;
 attr.insns_cnt = probe_prog_length(attr.insns);
 attr.license = "GPL";
 attr.log_level = 2;

 ret = bpf_load_program_xattr(&attr, bpf_log_buf, BPF_LOG_BUF_SIZE);
 if (verbose && ret < 0)
  fprintf(stderr, "%s\n", bpf_log_buf);

 return ret;
}
