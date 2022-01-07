
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bpf_map_get_fd_by_id ;
 int do_pin_any (int,char**,int ) ;
 scalar_t__ json_output ;
 int json_wtr ;
 int jsonw_null (int ) ;

__attribute__((used)) static int do_pin(int argc, char **argv)
{
 int err;

 err = do_pin_any(argc, argv, bpf_map_get_fd_by_id);
 if (!err && json_output)
  jsonw_null(json_wtr);
 return err;
}
