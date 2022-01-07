
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum bpf_attach_type { ____Placeholder_bpf_attach_type } bpf_attach_type ;


 int __MAX_BPF_ATTACH_TYPE ;
 scalar_t__* attach_type_strings ;
 scalar_t__ is_prefix (char const*,scalar_t__) ;

__attribute__((used)) static enum bpf_attach_type parse_attach_type(const char *str)
{
 enum bpf_attach_type type;

 for (type = 0; type < __MAX_BPF_ATTACH_TYPE; type++) {
  if (attach_type_strings[type] &&
      is_prefix(str, attach_type_strings[type]))
   return type;
 }

 return __MAX_BPF_ATTACH_TYPE;
}
