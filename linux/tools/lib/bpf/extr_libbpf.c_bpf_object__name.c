
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_object {char const* path; } ;


 int EINVAL ;
 char const* ERR_PTR (int ) ;

const char *bpf_object__name(const struct bpf_object *obj)
{
 return obj ? obj->path : ERR_PTR(-EINVAL);
}
