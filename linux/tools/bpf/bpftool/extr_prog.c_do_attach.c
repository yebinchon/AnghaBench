
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum bpf_attach_type { ____Placeholder_bpf_attach_type } bpf_attach_type ;


 int EINVAL ;
 int bpf_prog_attach (int,int,int,int ) ;
 scalar_t__ json_output ;
 int json_wtr ;
 int jsonw_null (int ) ;
 int p_err (char*) ;
 int parse_attach_detach_args (int,char**,int*,int*,int*) ;

__attribute__((used)) static int do_attach(int argc, char **argv)
{
 enum bpf_attach_type attach_type;
 int err, progfd;
 int mapfd;

 err = parse_attach_detach_args(argc, argv,
           &progfd, &attach_type, &mapfd);
 if (err)
  return err;

 err = bpf_prog_attach(progfd, mapfd, attach_type, 0);
 if (err) {
  p_err("failed prog attach to map");
  return -EINVAL;
 }

 if (json_output)
  jsonw_null(json_wtr);
 return 0;
}
