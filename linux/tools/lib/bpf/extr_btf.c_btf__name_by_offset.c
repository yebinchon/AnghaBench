
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btf {char const* strings; TYPE_1__* hdr; } ;
typedef size_t __u32 ;
struct TYPE_2__ {size_t str_len; } ;



const char *btf__name_by_offset(const struct btf *btf, __u32 offset)
{
 if (offset < btf->hdr->str_len)
  return &btf->strings[offset];
 else
  return ((void*)0);
}
