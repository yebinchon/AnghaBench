
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_map {int dummy; } ;


 int ENOTSUPP ;

__attribute__((used)) static int notsupp_get_next_key(struct bpf_map *map, void *key,
    void *next_key)
{
 return -ENOTSUPP;
}
