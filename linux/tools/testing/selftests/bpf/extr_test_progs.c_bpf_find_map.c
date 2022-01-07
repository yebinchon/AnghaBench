
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_object {int dummy; } ;
struct bpf_map {int dummy; } ;


 int bpf_map__fd (struct bpf_map*) ;
 struct bpf_map* bpf_object__find_map_by_name (struct bpf_object*,char const*) ;
 int printf (char*,char const*,char const*) ;
 int test__fail () ;

int bpf_find_map(const char *test, struct bpf_object *obj, const char *name)
{
 struct bpf_map *map;

 map = bpf_object__find_map_by_name(obj, name);
 if (!map) {
  printf("%s:FAIL:map '%s' not found\n", test, name);
  test__fail();
  return -1;
 }
 return bpf_map__fd(map);
}
