
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum bpf_attach_type { ____Placeholder_bpf_attach_type } bpf_attach_type ;
struct TYPE_3__ {int attach_type; int is_attachable; int len; int sec; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int free (char*) ;
 char* libbpf_get_type_names (int) ;
 int pr_info (char*,char*) ;
 int pr_warning (char*,char const*) ;
 TYPE_1__* section_names ;
 scalar_t__ strncmp (char const*,int ,int ) ;

int libbpf_attach_type_by_name(const char *name,
          enum bpf_attach_type *attach_type)
{
 char *type_names;
 int i;

 if (!name)
  return -EINVAL;

 for (i = 0; i < ARRAY_SIZE(section_names); i++) {
  if (strncmp(name, section_names[i].sec, section_names[i].len))
   continue;
  if (!section_names[i].is_attachable)
   return -EINVAL;
  *attach_type = section_names[i].attach_type;
  return 0;
 }
 pr_warning("failed to guess attach type based on ELF section name '%s'\n", name);
 type_names = libbpf_get_type_names(1);
 if (type_names != ((void*)0)) {
  pr_info("attachable section(type) names are:%s\n", type_names);
  free(type_names);
 }

 return -EINVAL;
}
