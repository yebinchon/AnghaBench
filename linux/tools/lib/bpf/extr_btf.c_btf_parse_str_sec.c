
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_header {int str_off; int str_len; } ;
struct btf {char* nohdr_data; char const* strings; struct btf_header* hdr; } ;


 int BTF_MAX_STR_OFFSET ;
 int EINVAL ;
 int pr_debug (char*) ;

__attribute__((used)) static int btf_parse_str_sec(struct btf *btf)
{
 const struct btf_header *hdr = btf->hdr;
 const char *start = btf->nohdr_data + hdr->str_off;
 const char *end = start + btf->hdr->str_len;

 if (!hdr->str_len || hdr->str_len - 1 > BTF_MAX_STR_OFFSET ||
     start[0] || end[-1]) {
  pr_debug("Invalid BTF string section\n");
  return -EINVAL;
 }

 btf->strings = start;

 return 0;
}
