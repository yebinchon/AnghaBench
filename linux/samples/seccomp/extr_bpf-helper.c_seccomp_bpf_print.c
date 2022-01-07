
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_filter {int code; int jt; int jf; int k; } ;


 int printf (char*,int,int,int,int) ;

void seccomp_bpf_print(struct sock_filter *filter, size_t count)
{
 struct sock_filter *end = filter + count;
 for ( ; filter < end; ++filter)
  printf("{ code=%u,jt=%u,jf=%u,k=%u },\n",
   filter->code, filter->jt, filter->jf, filter->k);
}
