
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nbd_request {int dummy; } ;
struct bpf_load_program_attr {char* license; int insns_cnt; int log_level; struct bpf_insn const* insns; int prog_type; } ;
struct bpf_insn {int dummy; } ;
typedef int program ;
typedef int error ;
typedef int __u32 ;


 int BPF_B ;
 int BPF_DW ;
 struct bpf_insn const BPF_EXIT_INSN () ;
 struct bpf_insn const BPF_LDX_MEM (int ,int ,int ,int) ;
 int BPF_PROG_TYPE_RAW_TRACEPOINT_WRITABLE ;
 int BPF_REG_0 ;
 int BPF_REG_1 ;
 int BPF_REG_6 ;
 scalar_t__ CHECK (int,char*,char*,...) ;
 int bpf_load_program_xattr (struct bpf_load_program_attr*,char*,int) ;
 int bpf_raw_tracepoint_open (char*,int) ;
 int close (int) ;
 int errno ;

void test_raw_tp_writable_reject_nbd_invalid(void)
{
 __u32 duration = 0;
 char error[4096];
 int bpf_fd = -1, tp_fd = -1;

 const struct bpf_insn program[] = {

  BPF_LDX_MEM(BPF_DW, BPF_REG_6, BPF_REG_1, 0),

  BPF_LDX_MEM(BPF_B, BPF_REG_0, BPF_REG_6,
       sizeof(struct nbd_request)),
  BPF_EXIT_INSN(),
 };

 struct bpf_load_program_attr load_attr = {
  .prog_type = BPF_PROG_TYPE_RAW_TRACEPOINT_WRITABLE,
  .license = "GPL v2",
  .insns = program,
  .insns_cnt = sizeof(program) / sizeof(struct bpf_insn),
  .log_level = 2,
 };

 bpf_fd = bpf_load_program_xattr(&load_attr, error, sizeof(error));
 if (CHECK(bpf_fd < 0, "bpf_raw_tracepoint_writable load",
    "failed: %d errno %d\n", bpf_fd, errno))
  return;

 tp_fd = bpf_raw_tracepoint_open("nbd_send_request", bpf_fd);
 if (CHECK(tp_fd >= 0, "bpf_raw_tracepoint_writable open",
    "erroneously succeeded\n"))
  goto out_bpffd;

 close(tp_fd);
out_bpffd:
 close(bpf_fd);
}
