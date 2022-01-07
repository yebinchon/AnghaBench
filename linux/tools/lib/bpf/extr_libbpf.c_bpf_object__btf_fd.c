
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_object {scalar_t__ btf; } ;


 int btf__fd (scalar_t__) ;

int bpf_object__btf_fd(const struct bpf_object *obj)
{
 return obj->btf ? btf__fd(obj->btf) : -1;
}
