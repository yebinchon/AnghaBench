
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union bpf_attr {int insn_cnt; unsigned long insns; unsigned long license; unsigned long log_buf; int log_size; int log_level; int prog_type; } ;
struct bpf_insn {int member_0; int member_4; int member_3; int member_2; int member_1; } ;
typedef int prog ;
typedef int bpf_log_buf ;
typedef int bpf_fd ;
typedef int attr ;


 int BPF_CALL ;
 int BPF_EXIT ;
 int BPF_FUNC_get_numa_node_id ;
 int BPF_JMP ;
 int BPF_PROG_LOAD ;
 int BPF_PROG_TYPE_SOCKET_FILTER ;
 int SOL_SOCKET ;
 int SO_ATTACH_REUSEPORT_EBPF ;
 int __NR_bpf ;
 int close (int) ;
 int errno ;
 int error (int,int ,char*,...) ;
 int memset (union bpf_attr*,int ,int) ;
 scalar_t__ setsockopt (int,int ,int ,int*,int) ;
 int syscall (int ,int ,union bpf_attr*,int) ;

__attribute__((used)) static void attach_bpf(int fd)
{
 static char bpf_log_buf[65536];
 static const char bpf_license[] = "";

 int bpf_fd;
 const struct bpf_insn prog[] = {

  { BPF_JMP | BPF_CALL, 0, 0, 0, BPF_FUNC_get_numa_node_id },

  { BPF_JMP | BPF_EXIT, 0, 0, 0, 0 }
 };
 union bpf_attr attr;

 memset(&attr, 0, sizeof(attr));
 attr.prog_type = BPF_PROG_TYPE_SOCKET_FILTER;
 attr.insn_cnt = sizeof(prog) / sizeof(prog[0]);
 attr.insns = (unsigned long) &prog;
 attr.license = (unsigned long) &bpf_license;
 attr.log_buf = (unsigned long) &bpf_log_buf;
 attr.log_size = sizeof(bpf_log_buf);
 attr.log_level = 1;

 bpf_fd = syscall(__NR_bpf, BPF_PROG_LOAD, &attr, sizeof(attr));
 if (bpf_fd < 0)
  error(1, errno, "ebpf error. log:\n%s\n", bpf_log_buf);

 if (setsockopt(fd, SOL_SOCKET, SO_ATTACH_REUSEPORT_EBPF, &bpf_fd,
   sizeof(bpf_fd)))
  error(1, errno, "failed to set SO_ATTACH_REUSEPORT_EBPF");

 close(bpf_fd);
}
