
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reuseport_array {int dummy; } ;
struct bpf_map {int dummy; } ;



__attribute__((used)) static struct reuseport_array *reuseport_array(struct bpf_map *map)
{
 return (struct reuseport_array *)map;
}
