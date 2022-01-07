
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ str_len; } ;
struct btf {TYPE_1__ hdr; } ;


 scalar_t__ BTF_STR_OFFSET_VALID (scalar_t__) ;

__attribute__((used)) static bool btf_name_offset_valid(const struct btf *btf, u32 offset)
{
 return BTF_STR_OFFSET_VALID(offset) &&
  offset < btf->hdr.str_len;
}
