
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf {int dummy; } ;
typedef int __u32 ;


 scalar_t__ btf__name_by_offset (struct btf const*,int ) ;

__attribute__((used)) static const char *btf_str(const struct btf *btf, __u32 off)
{
 if (!off)
  return "(anon)";
 return btf__name_by_offset(btf, off) ? : "(invalid)";
}
