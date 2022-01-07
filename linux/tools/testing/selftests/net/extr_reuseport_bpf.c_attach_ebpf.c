
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union bpf_attr {unsigned long insns; unsigned long license; unsigned long log_buf; int log_size; int log_level; scalar_t__ kern_version; int insn_cnt; int prog_type; } ;
typedef int uint16_t ;
struct bpf_insn {int member_0; int member_4; int member_3; int member_2; int member_1; } ;
typedef int bpf_log_buf ;
typedef int bpf_fd ;
typedef int attr ;


 int ARRAY_SIZE (struct bpf_insn const*) ;
 int BPF_ABS ;
 int BPF_ALU64 ;
 int BPF_EXIT ;
 int BPF_JMP ;
 int BPF_K ;
 int BPF_LD ;
 int BPF_MOD ;
 int BPF_MOV ;
 int BPF_PROG_LOAD ;
 int BPF_PROG_TYPE_SOCKET_FILTER ;
 int BPF_REG_0 ;
 int BPF_REG_1 ;
 int BPF_REG_6 ;
 int BPF_W ;
 int BPF_X ;
 int SOL_SOCKET ;
 int SO_ATTACH_REUSEPORT_EBPF ;
 int __NR_bpf ;
 int close (int) ;
 int errno ;
 int error (int,int ,char*,...) ;
 int memset (union bpf_attr*,int ,int) ;
 scalar_t__ setsockopt (int,int ,int ,int*,int) ;
 int syscall (int ,int ,union bpf_attr*,int) ;

__attribute__((used)) static void attach_ebpf(int fd, uint16_t mod)
{
 static char bpf_log_buf[65536];
 static const char bpf_license[] = "GPL";

 int bpf_fd;
 const struct bpf_insn prog[] = {

  { BPF_ALU64 | BPF_MOV | BPF_X, BPF_REG_6, BPF_REG_1, 0, 0 },

  { BPF_LD | BPF_ABS | BPF_W, 0, 0, 0, 0 },

  { BPF_ALU64 | BPF_MOD | BPF_K, BPF_REG_0, 0, 0, mod },

  { BPF_JMP | BPF_EXIT, 0, 0, 0, 0 }
 };
 union bpf_attr attr;

 memset(&attr, 0, sizeof(attr));
 attr.prog_type = BPF_PROG_TYPE_SOCKET_FILTER;
 attr.insn_cnt = ARRAY_SIZE(prog);
 attr.insns = (unsigned long) &prog;
 attr.license = (unsigned long) &bpf_license;
 attr.log_buf = (unsigned long) &bpf_log_buf;
 attr.log_size = sizeof(bpf_log_buf);
 attr.log_level = 1;
 attr.kern_version = 0;

 bpf_fd = syscall(__NR_bpf, BPF_PROG_LOAD, &attr, sizeof(attr));
 if (bpf_fd < 0)
  error(1, errno, "ebpf error. log:\n%s\n", bpf_log_buf);

 if (setsockopt(fd, SOL_SOCKET, SO_ATTACH_REUSEPORT_EBPF, &bpf_fd,
   sizeof(bpf_fd)))
  error(1, errno, "failed to set SO_ATTACH_REUSEPORT_EBPF");

 close(bpf_fd);
}
