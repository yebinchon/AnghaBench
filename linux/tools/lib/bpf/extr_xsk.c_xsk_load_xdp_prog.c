
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int xdp_flags; } ;
struct xsk_socket {int prog_fd; TYPE_1__ config; int ifindex; int xsks_map_fd; } ;
struct bpf_insn {int dummy; } ;
typedef int prog ;


 int BPF_ADD ;
 struct bpf_insn BPF_ALU64_IMM (int ,int ,int) ;
 struct bpf_insn BPF_EMIT_CALL (int ) ;
 struct bpf_insn BPF_EXIT_INSN () ;
 int BPF_FUNC_map_lookup_elem ;
 int BPF_FUNC_redirect_map ;
 int BPF_JEQ ;
 struct bpf_insn BPF_JMP_IMM (int ,int ,int ,int) ;
 struct bpf_insn BPF_LDX_MEM (int ,int ,int ,int) ;
 struct bpf_insn BPF_LD_MAP_FD (int ,int ) ;
 struct bpf_insn BPF_MOV32_IMM (int ,int) ;
 struct bpf_insn BPF_MOV64_REG (int ,int ) ;
 int BPF_PROG_TYPE_XDP ;
 int BPF_REG_0 ;
 int BPF_REG_1 ;
 int BPF_REG_10 ;
 int BPF_REG_2 ;
 int BPF_REG_3 ;
 struct bpf_insn BPF_STX_MEM (int ,int ,int ,int) ;
 int BPF_W ;
 int bpf_load_program (int ,struct bpf_insn*,size_t,char*,int ,char*,int const) ;
 int bpf_set_link_xdp_fd (int ,int,int ) ;
 int close (int) ;
 int pr_warning (char*,char*) ;

__attribute__((used)) static int xsk_load_xdp_prog(struct xsk_socket *xsk)
{
 static const int log_buf_size = 16 * 1024;
 char log_buf[log_buf_size];
 int err, prog_fd;
 struct bpf_insn prog[] = {

  BPF_LDX_MEM(BPF_W, BPF_REG_1, BPF_REG_1, 16),

  BPF_STX_MEM(BPF_W, BPF_REG_10, BPF_REG_1, -4),
  BPF_MOV64_REG(BPF_REG_2, BPF_REG_10),
  BPF_ALU64_IMM(BPF_ADD, BPF_REG_2, -4),
  BPF_LD_MAP_FD(BPF_REG_1, xsk->xsks_map_fd),
  BPF_EMIT_CALL(BPF_FUNC_map_lookup_elem),
  BPF_MOV64_REG(BPF_REG_1, BPF_REG_0),
  BPF_MOV32_IMM(BPF_REG_0, 2),

  BPF_JMP_IMM(BPF_JEQ, BPF_REG_1, 0, 5),

  BPF_LD_MAP_FD(BPF_REG_1, xsk->xsks_map_fd),
  BPF_LDX_MEM(BPF_W, BPF_REG_2, BPF_REG_10, -4),
  BPF_MOV32_IMM(BPF_REG_3, 0),
  BPF_EMIT_CALL(BPF_FUNC_redirect_map),

  BPF_EXIT_INSN(),
 };
 size_t insns_cnt = sizeof(prog) / sizeof(struct bpf_insn);

 prog_fd = bpf_load_program(BPF_PROG_TYPE_XDP, prog, insns_cnt,
       "LGPL-2.1 or BSD-2-Clause", 0, log_buf,
       log_buf_size);
 if (prog_fd < 0) {
  pr_warning("BPF log buffer:\n%s", log_buf);
  return prog_fd;
 }

 err = bpf_set_link_xdp_fd(xsk->ifindex, prog_fd, xsk->config.xdp_flags);
 if (err) {
  close(prog_fd);
  return err;
 }

 xsk->prog_fd = prog_fd;
 return 0;
}
