
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_2__ {size_t str_len; } ;
struct btf {char const* strings; TYPE_1__ hdr; } ;



const char *btf_name_by_offset(const struct btf *btf, u32 offset)
{
 if (offset < btf->hdr.str_len)
  return &btf->strings[offset];

 return ((void*)0);
}
