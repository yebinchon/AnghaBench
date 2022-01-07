
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u64 ;
typedef int __u32 ;
 int json_wtr ;
 int jsonw_end_object (int ) ;
 int jsonw_int_field (int ,char*,int) ;
 int jsonw_lluint_field (int ,char*,int ) ;
 int jsonw_start_object (int ) ;
 int jsonw_string_field (int ,char*,char*) ;
 int jsonw_uint_field (int ,char*,int) ;

__attribute__((used)) static void print_perf_json(int pid, int fd, __u32 prog_id, __u32 fd_type,
       char *buf, __u64 probe_offset, __u64 probe_addr)
{
 jsonw_start_object(json_wtr);
 jsonw_int_field(json_wtr, "pid", pid);
 jsonw_int_field(json_wtr, "fd", fd);
 jsonw_uint_field(json_wtr, "prog_id", prog_id);
 switch (fd_type) {
 case 131:
  jsonw_string_field(json_wtr, "fd_type", "raw_tracepoint");
  jsonw_string_field(json_wtr, "tracepoint", buf);
  break;
 case 130:
  jsonw_string_field(json_wtr, "fd_type", "tracepoint");
  jsonw_string_field(json_wtr, "tracepoint", buf);
  break;
 case 133:
  jsonw_string_field(json_wtr, "fd_type", "kprobe");
  if (buf[0] != '\0') {
   jsonw_string_field(json_wtr, "func", buf);
   jsonw_lluint_field(json_wtr, "offset", probe_offset);
  } else {
   jsonw_lluint_field(json_wtr, "addr", probe_addr);
  }
  break;
 case 132:
  jsonw_string_field(json_wtr, "fd_type", "kretprobe");
  if (buf[0] != '\0') {
   jsonw_string_field(json_wtr, "func", buf);
   jsonw_lluint_field(json_wtr, "offset", probe_offset);
  } else {
   jsonw_lluint_field(json_wtr, "addr", probe_addr);
  }
  break;
 case 129:
  jsonw_string_field(json_wtr, "fd_type", "uprobe");
  jsonw_string_field(json_wtr, "filename", buf);
  jsonw_lluint_field(json_wtr, "offset", probe_offset);
  break;
 case 128:
  jsonw_string_field(json_wtr, "fd_type", "uretprobe");
  jsonw_string_field(json_wtr, "filename", buf);
  jsonw_lluint_field(json_wtr, "offset", probe_offset);
  break;
 default:
  break;
 }
 jsonw_end_object(json_wtr);
}
