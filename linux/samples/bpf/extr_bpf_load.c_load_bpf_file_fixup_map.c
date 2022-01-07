
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fixup_map_cb ;


 int do_load_bpf_file (char const*,int ) ;

int load_bpf_file_fixup_map(const char *path, fixup_map_cb fixup_map)
{
 return do_load_bpf_file(path, fixup_map);
}
