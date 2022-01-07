
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_load_bpf_file (char*,int *) ;

int load_bpf_file(char *path)
{
 return do_load_bpf_file(path, ((void*)0));
}
