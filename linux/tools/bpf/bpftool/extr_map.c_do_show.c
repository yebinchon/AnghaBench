
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_map_info {int dummy; } ;
typedef int info ;
typedef int __u32 ;


 int BAD_ARG () ;
 int BPF_OBJ_MAP ;
 scalar_t__ EINVAL ;
 scalar_t__ ENOENT ;
 int bpf_map_get_fd_by_id (int) ;
 int bpf_map_get_next_id (int,int*) ;
 int bpf_obj_get_info_by_fd (int,struct bpf_map_info*,int*) ;
 int build_pinned_obj_table (int *,int ) ;
 int close (int) ;
 scalar_t__ errno ;
 scalar_t__ json_output ;
 int json_wtr ;
 int jsonw_end_array (int ) ;
 int jsonw_start_array (int ) ;
 int map_parse_fd_and_info (int*,char***,struct bpf_map_info*,int*) ;
 int map_table ;
 int p_err (char*,int,...) ;
 int show_map_close_json (int,struct bpf_map_info*) ;
 int show_map_close_plain (int,struct bpf_map_info*) ;
 scalar_t__ show_pinned ;
 int strerror (scalar_t__) ;

__attribute__((used)) static int do_show(int argc, char **argv)
{
 struct bpf_map_info info = {};
 __u32 len = sizeof(info);
 __u32 id = 0;
 int err;
 int fd;

 if (show_pinned)
  build_pinned_obj_table(&map_table, BPF_OBJ_MAP);

 if (argc == 2) {
  fd = map_parse_fd_and_info(&argc, &argv, &info, &len);
  if (fd < 0)
   return -1;

  if (json_output)
   return show_map_close_json(fd, &info);
  else
   return show_map_close_plain(fd, &info);
 }

 if (argc)
  return BAD_ARG();

 if (json_output)
  jsonw_start_array(json_wtr);
 while (1) {
  err = bpf_map_get_next_id(id, &id);
  if (err) {
   if (errno == ENOENT)
    break;
   p_err("can't get next map: %s%s", strerror(errno),
         errno == EINVAL ? " -- kernel too old?" : "");
   break;
  }

  fd = bpf_map_get_fd_by_id(id);
  if (fd < 0) {
   if (errno == ENOENT)
    continue;
   p_err("can't get map by id (%u): %s",
         id, strerror(errno));
   break;
  }

  err = bpf_obj_get_info_by_fd(fd, &info, &len);
  if (err) {
   p_err("can't get map info: %s", strerror(errno));
   close(fd);
   break;
  }

  if (json_output)
   show_map_close_json(fd, &info);
  else
   show_map_close_plain(fd, &info);
 }
 if (json_output)
  jsonw_end_array(json_wtr);

 return errno == ENOENT ? 0 : -1;
}
