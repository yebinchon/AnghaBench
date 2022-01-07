
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_object {void* priv; } ;


 int EINVAL ;
 void* ERR_PTR (int ) ;

void *bpf_object__priv(const struct bpf_object *obj)
{
 return obj ? obj->priv : ERR_PTR(-EINVAL);
}
