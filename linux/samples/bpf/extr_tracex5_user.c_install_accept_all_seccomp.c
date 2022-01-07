
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_fprog {unsigned short len; struct sock_filter* filter; } ;
struct sock_filter {int dummy; } ;
typedef int filter ;


 scalar_t__ BPF_K ;
 scalar_t__ BPF_RET ;
 struct sock_filter BPF_STMT (scalar_t__,int ) ;
 int PR_SET_SECCOMP ;
 int SECCOMP_RET_ALLOW ;
 int perror (char*) ;
 scalar_t__ prctl (int ,int,struct sock_fprog*) ;

__attribute__((used)) static void install_accept_all_seccomp(void)
{
 struct sock_filter filter[] = {
  BPF_STMT(BPF_RET+BPF_K, SECCOMP_RET_ALLOW),
 };
 struct sock_fprog prog = {
  .len = (unsigned short)(sizeof(filter)/sizeof(filter[0])),
  .filter = filter,
 };
 if (prctl(PR_SET_SECCOMP, 2, &prog))
  perror("prctl");
}
