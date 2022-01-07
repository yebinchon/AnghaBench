
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* __u32 ;


 int BAD_ARG () ;
 int BPF_OBJ_PROG ;
 scalar_t__ EINVAL ;
 scalar_t__ ENOENT ;
 int bpf_prog_get_fd_by_id (char*) ;
 int bpf_prog_get_next_id (char*,char**) ;
 int build_pinned_obj_table (int *,int ) ;
 int close (int) ;
 scalar_t__ errno ;
 scalar_t__ json_output ;
 int json_wtr ;
 int jsonw_end_array (int ) ;
 int jsonw_start_array (int ) ;
 int p_err (char*,char*,char*) ;
 int prog_parse_fd (int*,char***) ;
 int prog_table ;
 scalar_t__ show_pinned ;
 int show_prog (int) ;
 char* strerror (scalar_t__) ;

__attribute__((used)) static int do_show(int argc, char **argv)
{
 __u32 id = 0;
 int err;
 int fd;

 if (show_pinned)
  build_pinned_obj_table(&prog_table, BPF_OBJ_PROG);

 if (argc == 2) {
  fd = prog_parse_fd(&argc, &argv);
  if (fd < 0)
   return -1;

  err = show_prog(fd);
  close(fd);
  return err;
 }

 if (argc)
  return BAD_ARG();

 if (json_output)
  jsonw_start_array(json_wtr);
 while (1) {
  err = bpf_prog_get_next_id(id, &id);
  if (err) {
   if (errno == ENOENT) {
    err = 0;
    break;
   }
   p_err("can't get next program: %s%s", strerror(errno),
         errno == EINVAL ? " -- kernel too old?" : "");
   err = -1;
   break;
  }

  fd = bpf_prog_get_fd_by_id(id);
  if (fd < 0) {
   if (errno == ENOENT)
    continue;
   p_err("can't get prog by id (%u): %s",
         id, strerror(errno));
   err = -1;
   break;
  }

  err = show_prog(fd);
  close(fd);
  if (err)
   break;
 }

 if (json_output)
  jsonw_end_array(json_wtr);

 return err;
}
