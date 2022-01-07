
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog_info {char* id; char const* name; } ;
typedef int info ;
typedef int __u32 ;


 scalar_t__ bpf_obj_get_info_by_fd (int,struct bpf_prog_info*,int*) ;
 int bpf_prog_get_fd_by_id (int) ;
 int close (int) ;
 scalar_t__ json_output ;
 int json_wtr ;
 int jsonw_end_object (int ) ;
 int jsonw_start_object (int ) ;
 int jsonw_string_field (int ,char*,char const*) ;
 int jsonw_uint_field (int ,char*,char*) ;
 int printf (char*,char*,char*,char const*,char const*,char const*) ;

__attribute__((used)) static int show_bpf_prog(int id, const char *attach_type_str,
    const char *attach_flags_str,
    int level)
{
 struct bpf_prog_info info = {};
 __u32 info_len = sizeof(info);
 int prog_fd;

 prog_fd = bpf_prog_get_fd_by_id(id);
 if (prog_fd < 0)
  return -1;

 if (bpf_obj_get_info_by_fd(prog_fd, &info, &info_len)) {
  close(prog_fd);
  return -1;
 }

 if (json_output) {
  jsonw_start_object(json_wtr);
  jsonw_uint_field(json_wtr, "id", info.id);
  jsonw_string_field(json_wtr, "attach_type",
       attach_type_str);
  jsonw_string_field(json_wtr, "attach_flags",
       attach_flags_str);
  jsonw_string_field(json_wtr, "name", info.name);
  jsonw_end_object(json_wtr);
 } else {
  printf("%s%-8u %-15s %-15s %-15s\n", level ? "    " : "",
         info.id,
         attach_type_str,
         attach_flags_str,
         info.name);
 }

 close(prog_fd);
 return 0;
}
