
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf {int dummy; } ;
struct bpf_object {struct btf* btf; } ;



struct btf *bpf_object__btf(const struct bpf_object *obj)
{
 return obj ? obj->btf : ((void*)0);
}
