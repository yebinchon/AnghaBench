
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int plain_desc ;
typedef enum bpf_prog_type { ____Placeholder_bpf_prog_type } bpf_prog_type ;
typedef int define_name ;
typedef scalar_t__ __u32 ;




 int bpf_probe_prog_type (int,scalar_t__) ;
 int p_info (char*) ;
 int print_bool_feature (char*,char*,char*,int,char const*) ;
 char** prog_type_name ;
 int sprintf (char*,char*,char const*,...) ;
 size_t strlen (char const*) ;
 int uppercase (char*,int) ;

__attribute__((used)) static void
probe_prog_type(enum bpf_prog_type prog_type, bool *supported_types,
  const char *define_prefix, __u32 ifindex)
{
 char feat_name[128], plain_desc[128], define_name[128];
 const char *plain_comment = "eBPF program_type ";
 size_t maxlen;
 bool res;

 if (ifindex)

  switch (prog_type) {
  case 129:
  case 128:
   break;
  default:
   return;
  }

 res = bpf_probe_prog_type(prog_type, ifindex);

 supported_types[prog_type] |= res;

 maxlen = sizeof(plain_desc) - strlen(plain_comment) - 1;
 if (strlen(prog_type_name[prog_type]) > maxlen) {
  p_info("program type name too long");
  return;
 }

 sprintf(feat_name, "have_%s_prog_type", prog_type_name[prog_type]);
 sprintf(define_name, "%s_prog_type", prog_type_name[prog_type]);
 uppercase(define_name, sizeof(define_name));
 sprintf(plain_desc, "%s%s", plain_comment, prog_type_name[prog_type]);
 print_bool_feature(feat_name, plain_desc, define_name, res,
      define_prefix);
}
