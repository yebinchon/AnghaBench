
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_filter {int dummy; } ;


 int bpf_disasm (struct sock_filter const,unsigned int) ;

__attribute__((used)) static void bpf_disasm_all(const struct sock_filter *f, unsigned int len)
{
 unsigned int i;

 for (i = 0; i < len; i++)
  bpf_disasm(f[i], i);
}
