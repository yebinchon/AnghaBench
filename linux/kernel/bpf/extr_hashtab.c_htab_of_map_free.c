
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_map {int inner_map_meta; } ;


 int bpf_map_meta_free (int ) ;
 int fd_htab_map_free (struct bpf_map*) ;

__attribute__((used)) static void htab_of_map_free(struct bpf_map *map)
{
 bpf_map_meta_free(map->inner_map_meta);
 fd_htab_map_free(map);
}
