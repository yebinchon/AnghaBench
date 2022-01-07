
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;

__attribute__((used)) static void usage(void)
{
 printf("Usage: fds_example [...]\n");
 printf("       -F <file>   File to pin/get object\n");
 printf("       -P          |- pin object\n");
 printf("       -G          `- get object\n");
 printf("       -m          eBPF map mode\n");
 printf("       -k <key>    |- map key\n");
 printf("       -v <value>  `- map value\n");
 printf("       -p          eBPF prog mode\n");
 printf("       -o <object> `- object file\n");
 printf("       -h          Display this help.\n");
}
