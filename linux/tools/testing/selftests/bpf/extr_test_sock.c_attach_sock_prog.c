
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum bpf_attach_type { ____Placeholder_bpf_attach_type } bpf_attach_type ;


 int BPF_F_ALLOW_OVERRIDE ;
 int bpf_prog_attach (int,int,int,int ) ;

__attribute__((used)) static int attach_sock_prog(int cgfd, int progfd,
       enum bpf_attach_type attach_type)
{
 return bpf_prog_attach(progfd, cgfd, attach_type, BPF_F_ALLOW_OVERRIDE);
}
