
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_type {int dummy; } ;
typedef int __u32 ;


 long btf_hash_common (struct btf_type*) ;
 long hash_combine (long,int ) ;

__attribute__((used)) static long btf_hash_int(struct btf_type *t)
{
 __u32 info = *(__u32 *)(t + 1);
 long h;

 h = btf_hash_common(t);
 h = hash_combine(h, info);
 return h;
}
