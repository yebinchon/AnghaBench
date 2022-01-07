
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_object {int dummy; } ;
struct bpf_map {int dummy; } ;


 int ENOTSUP ;
 struct bpf_map* ERR_PTR (int ) ;

struct bpf_map *
bpf_object__find_map_by_offset(struct bpf_object *obj, size_t offset)
{
 return ERR_PTR(-ENOTSUP);
}
