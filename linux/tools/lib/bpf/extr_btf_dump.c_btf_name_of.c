
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_dump {int btf; } ;
typedef int __u32 ;


 char const* btf__name_by_offset (int ,int ) ;

__attribute__((used)) static const char *btf_name_of(const struct btf_dump *d, __u32 name_off)
{
 return btf__name_by_offset(d->btf, name_off);
}
