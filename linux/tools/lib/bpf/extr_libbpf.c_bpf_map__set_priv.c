
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_map {int (* clear_priv ) (struct bpf_map*,void*) ;void* priv; } ;
typedef int (* bpf_map_clear_priv_t ) (struct bpf_map*,void*) ;


 int EINVAL ;
 int stub1 (struct bpf_map*,void*) ;

int bpf_map__set_priv(struct bpf_map *map, void *priv,
       bpf_map_clear_priv_t clear_priv)
{
 if (!map)
  return -EINVAL;

 if (map->priv) {
  if (map->clear_priv)
   map->clear_priv(map, map->priv);
 }

 map->priv = priv;
 map->clear_priv = clear_priv;
 return 0;
}
