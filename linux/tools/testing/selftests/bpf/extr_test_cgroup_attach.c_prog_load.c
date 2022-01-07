
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_insn {int dummy; } ;
typedef int prog ;


 struct bpf_insn BPF_EXIT_INSN () ;
 int BPF_LOG_BUF_SIZE ;
 struct bpf_insn BPF_MOV64_IMM (int ,int) ;
 int BPF_PROG_TYPE_CGROUP_SKB ;
 int BPF_REG_0 ;
 int bpf_load_program (int ,struct bpf_insn*,size_t,char*,int ,char*,int ) ;
 char* bpf_log_buf ;
 int log_err (char*) ;
 int printf (char*,char*) ;

__attribute__((used)) static int prog_load(int verdict)
{
 int ret;
 struct bpf_insn prog[] = {
  BPF_MOV64_IMM(BPF_REG_0, verdict),
  BPF_EXIT_INSN(),
 };
 size_t insns_cnt = sizeof(prog) / sizeof(struct bpf_insn);

 ret = bpf_load_program(BPF_PROG_TYPE_CGROUP_SKB,
          prog, insns_cnt, "GPL", 0,
          bpf_log_buf, BPF_LOG_BUF_SIZE);

 if (ret < 0) {
  log_err("Loading program");
  printf("Output from verifier:\n%s\n-------\n", bpf_log_buf);
  return 0;
 }
 return ret;
}
