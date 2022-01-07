
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_object {int dummy; } ;


 int bpf_map__fd (int ) ;
 int bpf_object__find_map_by_name (struct bpf_object const*,char const*) ;

int
bpf_object__find_map_fd_by_name(const struct bpf_object *obj, const char *name)
{
 return bpf_map__fd(bpf_object__find_map_by_name(obj, name));
}
