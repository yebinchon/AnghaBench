
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum bpf_prog_type { ____Placeholder_bpf_prog_type } bpf_prog_type ;
typedef enum bpf_attach_type { ____Placeholder_bpf_attach_type } bpf_attach_type ;
struct TYPE_3__ {int prog_type; int expected_attach_type; int len; int sec; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int free (char*) ;
 char* libbpf_get_type_names (int) ;
 int pr_info (char*,char*) ;
 int pr_warning (char*,char const*) ;
 TYPE_1__* section_names ;
 scalar_t__ strncmp (char const*,int ,int ) ;

int libbpf_prog_type_by_name(const char *name, enum bpf_prog_type *prog_type,
        enum bpf_attach_type *expected_attach_type)
{
 char *type_names;
 int i;

 if (!name)
  return -EINVAL;

 for (i = 0; i < ARRAY_SIZE(section_names); i++) {
  if (strncmp(name, section_names[i].sec, section_names[i].len))
   continue;
  *prog_type = section_names[i].prog_type;
  *expected_attach_type = section_names[i].expected_attach_type;
  return 0;
 }
 pr_warning("failed to guess program type based on ELF section name '%s'\n", name);
 type_names = libbpf_get_type_names(0);
 if (type_names != ((void*)0)) {
  pr_info("supported section(type) names are:%s\n", type_names);
  free(type_names);
 }

 return -EINVAL;
}
