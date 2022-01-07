
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_create_map_attr {void* name; scalar_t__ map_ifindex; int map_flags; int max_entries; int value_size; int key_size; scalar_t__ map_type; int * member_0; } ;


 void* GET_ARG () ;
 int NEXT_ARG () ;
 int REQ_ARGS (int) ;
 int bpf_create_map_xattr (struct bpf_create_map_attr*) ;
 int close (int) ;
 int do_pin_fd (int,char const*) ;
 int errno ;
 scalar_t__ if_nametoindex (char*) ;
 scalar_t__ is_prefix (char*,char*) ;
 scalar_t__ json_output ;
 int json_wtr ;
 int jsonw_null (int ) ;
 scalar_t__ map_type_from_str (char*) ;
 int p_err (char*,...) ;
 scalar_t__ parse_u32_arg (int*,char***,int *,char*) ;
 int set_max_rlimit () ;
 char* strerror (int ) ;

__attribute__((used)) static int do_create(int argc, char **argv)
{
 struct bpf_create_map_attr attr = { ((void*)0), };
 const char *pinfile;
 int err, fd;

 if (!REQ_ARGS(7))
  return -1;
 pinfile = GET_ARG();

 while (argc) {
  if (!REQ_ARGS(2))
   return -1;

  if (is_prefix(*argv, "type")) {
   NEXT_ARG();

   if (attr.map_type) {
    p_err("map type already specified");
    return -1;
   }

   attr.map_type = map_type_from_str(*argv);
   if ((int)attr.map_type < 0) {
    p_err("unrecognized map type: %s", *argv);
    return -1;
   }
   NEXT_ARG();
  } else if (is_prefix(*argv, "name")) {
   NEXT_ARG();
   attr.name = GET_ARG();
  } else if (is_prefix(*argv, "key")) {
   if (parse_u32_arg(&argc, &argv, &attr.key_size,
       "key size"))
    return -1;
  } else if (is_prefix(*argv, "value")) {
   if (parse_u32_arg(&argc, &argv, &attr.value_size,
       "value size"))
    return -1;
  } else if (is_prefix(*argv, "entries")) {
   if (parse_u32_arg(&argc, &argv, &attr.max_entries,
       "max entries"))
    return -1;
  } else if (is_prefix(*argv, "flags")) {
   if (parse_u32_arg(&argc, &argv, &attr.map_flags,
       "flags"))
    return -1;
  } else if (is_prefix(*argv, "dev")) {
   NEXT_ARG();

   if (attr.map_ifindex) {
    p_err("offload device already specified");
    return -1;
   }

   attr.map_ifindex = if_nametoindex(*argv);
   if (!attr.map_ifindex) {
    p_err("unrecognized netdevice '%s': %s",
          *argv, strerror(errno));
    return -1;
   }
   NEXT_ARG();
  } else {
   p_err("unknown arg %s", *argv);
   return -1;
  }
 }

 if (!attr.name) {
  p_err("map name not specified");
  return -1;
 }

 set_max_rlimit();

 fd = bpf_create_map_xattr(&attr);
 if (fd < 0) {
  p_err("map create failed: %s", strerror(errno));
  return -1;
 }

 err = do_pin_fd(fd, pinfile);
 close(fd);
 if (err)
  return err;

 if (json_output)
  jsonw_null(json_wtr);
 return 0;
}
