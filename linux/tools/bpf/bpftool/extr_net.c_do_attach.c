
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum net_attach_type { ____Placeholder_net_attach_type } net_attach_type ;


 int EINVAL ;
 int NEXT_ARG () ;
 int REQ_ARGS (int) ;
 char** attach_type_strings ;
 int close (int) ;
 int do_attach_detach_xdp (int,int,int,int) ;
 scalar_t__ is_prefix (char*,char*) ;
 scalar_t__ json_output ;
 int json_wtr ;
 int jsonw_null (int ) ;
 int net_attach_type_size ;
 int net_parse_dev (int*,char***) ;
 int p_err (char*,char*,...) ;
 int parse_attach_type (char*) ;
 int prog_parse_fd (int*,char***) ;
 int strerror (int) ;

__attribute__((used)) static int do_attach(int argc, char **argv)
{
 enum net_attach_type attach_type;
 int progfd, ifindex, err = 0;
 bool overwrite = 0;


 if (!REQ_ARGS(5))
  return -EINVAL;

 attach_type = parse_attach_type(*argv);
 if (attach_type == net_attach_type_size) {
  p_err("invalid net attach/detach type: %s", *argv);
  return -EINVAL;
 }
 NEXT_ARG();

 progfd = prog_parse_fd(&argc, &argv);
 if (progfd < 0)
  return -EINVAL;

 ifindex = net_parse_dev(&argc, &argv);
 if (ifindex < 1) {
  close(progfd);
  return -EINVAL;
 }

 if (argc) {
  if (is_prefix(*argv, "overwrite")) {
   overwrite = 1;
  } else {
   p_err("expected 'overwrite', got: '%s'?", *argv);
   close(progfd);
   return -EINVAL;
  }
 }


 if (is_prefix("xdp", attach_type_strings[attach_type]))
  err = do_attach_detach_xdp(progfd, attach_type, ifindex,
        overwrite);

 if (err < 0) {
  p_err("interface %s attach failed: %s",
        attach_type_strings[attach_type], strerror(-err));
  return err;
 }

 if (json_output)
  jsonw_null(json_wtr);

 return 0;
}
