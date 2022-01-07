
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum net_attach_type { ____Placeholder_net_attach_type } net_attach_type ;


 int EINVAL ;
 int NEXT_ARG () ;
 int REQ_ARGS (int) ;
 int * attach_type_strings ;
 int do_attach_detach_xdp (int,int,int,int *) ;
 scalar_t__ is_prefix (char*,int ) ;
 scalar_t__ json_output ;
 int json_wtr ;
 int jsonw_null (int ) ;
 int net_attach_type_size ;
 int net_parse_dev (int*,char***) ;
 int p_err (char*,char*,...) ;
 int parse_attach_type (char*) ;
 int strerror (int) ;

__attribute__((used)) static int do_detach(int argc, char **argv)
{
 enum net_attach_type attach_type;
 int progfd, ifindex, err = 0;


 if (!REQ_ARGS(3))
  return -EINVAL;

 attach_type = parse_attach_type(*argv);
 if (attach_type == net_attach_type_size) {
  p_err("invalid net attach/detach type: %s", *argv);
  return -EINVAL;
 }
 NEXT_ARG();

 ifindex = net_parse_dev(&argc, &argv);
 if (ifindex < 1)
  return -EINVAL;


 progfd = -1;
 if (is_prefix("xdp", attach_type_strings[attach_type]))
  err = do_attach_detach_xdp(progfd, attach_type, ifindex, ((void*)0));

 if (err < 0) {
  p_err("interface %s detach failed: %s",
        attach_type_strings[attach_type], strerror(-err));
  return err;
 }

 if (json_output)
  jsonw_null(json_wtr);

 return 0;
}
