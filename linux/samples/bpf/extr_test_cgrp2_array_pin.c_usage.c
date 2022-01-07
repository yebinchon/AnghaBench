
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;

__attribute__((used)) static void usage(void)
{
 printf("Usage: test_cgrp2_array_pin [...]\n");
 printf("       -F <file>   File to pin an BPF cgroup array\n");
 printf("       -U <file>   Update an already pinned BPF cgroup array\n");
 printf("       -v <value>  Full path of the cgroup2\n");
 printf("       -h          Display this help\n");
}
