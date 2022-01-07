
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_fprog {unsigned short len; struct sock_filter* filter; } ;
struct sock_filter {int dummy; } ;
typedef int filter ;


 scalar_t__ BPF_ABS ;
 scalar_t__ BPF_JEQ ;
 scalar_t__ BPF_JMP ;
 struct sock_filter BPF_JUMP (scalar_t__,int ,int,int) ;
 scalar_t__ BPF_K ;
 scalar_t__ BPF_LD ;
 scalar_t__ BPF_RET ;
 struct sock_filter BPF_STMT (scalar_t__,int ) ;
 scalar_t__ BPF_W ;
 int PR_SET_NO_NEW_PRIVS ;
 int PR_SET_SECCOMP ;
 int SECCOMP_MODE_FILTER ;
 int SECCOMP_RET_ALLOW ;
 int SECCOMP_RET_KILL ;
 int SECCOMP_RET_TRAP ;
 int STDERR_FILENO ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int __NR_exit ;
 int __NR_exit_group ;
 int __NR_read ;
 int __NR_rt_sigreturn ;
 int __NR_sigreturn ;
 int __NR_write ;
 int perror (char*) ;
 scalar_t__ prctl (int ,int,struct sock_fprog*,...) ;
 int syscall_arg (int ) ;
 int syscall_nr ;

__attribute__((used)) static int install_filter(void)
{
 struct sock_filter filter[] = {

  BPF_STMT(BPF_LD+BPF_W+BPF_ABS, syscall_nr),

  BPF_JUMP(BPF_JMP+BPF_JEQ+BPF_K, __NR_rt_sigreturn, 0, 1),
  BPF_STMT(BPF_RET+BPF_K, SECCOMP_RET_ALLOW),




  BPF_JUMP(BPF_JMP+BPF_JEQ+BPF_K, __NR_exit_group, 0, 1),
  BPF_STMT(BPF_RET+BPF_K, SECCOMP_RET_ALLOW),
  BPF_JUMP(BPF_JMP+BPF_JEQ+BPF_K, __NR_exit, 0, 1),
  BPF_STMT(BPF_RET+BPF_K, SECCOMP_RET_ALLOW),
  BPF_JUMP(BPF_JMP+BPF_JEQ+BPF_K, __NR_read, 1, 0),
  BPF_JUMP(BPF_JMP+BPF_JEQ+BPF_K, __NR_write, 3, 2),


  BPF_STMT(BPF_LD+BPF_W+BPF_ABS, syscall_arg(0)),
  BPF_JUMP(BPF_JMP+BPF_JEQ+BPF_K, STDIN_FILENO, 4, 0),
  BPF_STMT(BPF_RET+BPF_K, SECCOMP_RET_KILL),


  BPF_STMT(BPF_LD+BPF_W+BPF_ABS, syscall_arg(0)),
  BPF_JUMP(BPF_JMP+BPF_JEQ+BPF_K, STDOUT_FILENO, 1, 0),

  BPF_JUMP(BPF_JMP+BPF_JEQ+BPF_K, STDERR_FILENO, 1, 2),

  BPF_STMT(BPF_RET+BPF_K, SECCOMP_RET_ALLOW),
  BPF_STMT(BPF_RET+BPF_K, SECCOMP_RET_TRAP),
  BPF_STMT(BPF_RET+BPF_K, SECCOMP_RET_KILL),
 };
 struct sock_fprog prog = {
  .len = (unsigned short)(sizeof(filter)/sizeof(filter[0])),
  .filter = filter,
 };

 if (prctl(PR_SET_NO_NEW_PRIVS, 1, 0, 0, 0)) {
  perror("prctl(NO_NEW_PRIVS)");
  return 1;
 }


 if (prctl(PR_SET_SECCOMP, SECCOMP_MODE_FILTER, &prog)) {
  perror("prctl");
  return 1;
 }
 return 0;
}
