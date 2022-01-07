
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_type {int dummy; } ;


 scalar_t__ btf_type_nosize (struct btf_type const*) ;

__attribute__((used)) static bool btf_type_nosize_or_null(const struct btf_type *t)
{
 return !t || btf_type_nosize(t);
}
