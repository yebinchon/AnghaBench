
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BAD_ARG () ;
 int REQ_ARGS (int) ;
 int bpf_map_freeze (int) ;
 int close (int) ;
 int errno ;
 scalar_t__ json_output ;
 int json_wtr ;
 int jsonw_null (int ) ;
 int map_parse_fd (int*,char***) ;
 int p_err (char*,int ) ;
 int strerror (int ) ;

__attribute__((used)) static int do_freeze(int argc, char **argv)
{
 int err, fd;

 if (!REQ_ARGS(2))
  return -1;

 fd = map_parse_fd(&argc, &argv);
 if (fd < 0)
  return -1;

 if (argc) {
  close(fd);
  return BAD_ARG();
 }

 err = bpf_map_freeze(fd);
 close(fd);
 if (err) {
  p_err("failed to freeze map: %s", strerror(errno));
  return err;
 }

 if (json_output)
  jsonw_null(json_wtr);

 return 0;
}
