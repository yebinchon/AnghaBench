
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BPF_PROG_TYPE_SCHED_CLS ;
 int assert (int) ;
 int bpf_load_program (int ,int ,int,char*,int ,int *,int ) ;
 int prog ;

__attribute__((used)) static int bpf_try_load_prog(int insns, int fd_map,
        void (*bpf_filler)(unsigned int insns,
      int fd_map))
{
 int fd_prog;

 bpf_filler(insns, fd_map);
 fd_prog = bpf_load_program(BPF_PROG_TYPE_SCHED_CLS, prog, insns, "", 0,
       ((void*)0), 0);
 assert(fd_prog > 0);
 if (fd_map > 0)
  bpf_filler(insns, 0);
 return fd_prog;
}
