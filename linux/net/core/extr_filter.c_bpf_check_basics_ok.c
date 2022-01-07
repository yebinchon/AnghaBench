
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_filter {int dummy; } ;


 unsigned int BPF_MAXINSNS ;

__attribute__((used)) static bool bpf_check_basics_ok(const struct sock_filter *filter,
    unsigned int flen)
{
 if (filter == ((void*)0))
  return 0;
 if (flen == 0 || flen > BPF_MAXINSNS)
  return 0;

 return 1;
}
