
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_map {int dummy; } ;


 int kfree (struct bpf_map*) ;

void bpf_map_meta_free(struct bpf_map *map_meta)
{
 kfree(map_meta);
}
