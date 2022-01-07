
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_object_open_attr {int dummy; } ;
struct bpf_object {int dummy; } ;


 struct bpf_object* __bpf_object__open_xattr (struct bpf_object_open_attr*,int ) ;

struct bpf_object *bpf_object__open_xattr(struct bpf_object_open_attr *attr)
{
 return __bpf_object__open_xattr(attr, 0);
}
