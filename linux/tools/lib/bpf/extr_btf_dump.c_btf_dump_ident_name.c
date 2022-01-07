
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_dump {int ident_names; } ;
typedef int __u32 ;


 char const* btf_dump_resolve_name (struct btf_dump*,int ,int ) ;

__attribute__((used)) static const char *btf_dump_ident_name(struct btf_dump *d, __u32 id)
{
 return btf_dump_resolve_name(d, id, d->ident_names);
}
