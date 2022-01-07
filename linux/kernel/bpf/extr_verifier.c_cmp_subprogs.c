
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_subprog_info {int start; } ;



__attribute__((used)) static int cmp_subprogs(const void *a, const void *b)
{
 return ((struct bpf_subprog_info *)a)->start -
        ((struct bpf_subprog_info *)b)->start;
}
