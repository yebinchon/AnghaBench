
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;

__attribute__((used)) static void usage(void)
{
 printf("Usage: tc_l2_ipip_redirect [...]\n");
 printf("       -U <file>   Update an already pinned BPF array\n");
 printf("       -i <ifindex> Interface index\n");
 printf("       -h          Display this help\n");
}
