
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rec_size; } ;
struct btf_ext {TYPE_1__ line_info; } ;
typedef int __u32 ;



__u32 btf_ext__line_info_rec_size(const struct btf_ext *btf_ext)
{
 return btf_ext->line_info.rec_size;
}
