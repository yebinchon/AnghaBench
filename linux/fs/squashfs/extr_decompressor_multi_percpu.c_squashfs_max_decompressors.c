
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int num_possible_cpus () ;

int squashfs_max_decompressors(void)
{
 return num_possible_cpus();
}
