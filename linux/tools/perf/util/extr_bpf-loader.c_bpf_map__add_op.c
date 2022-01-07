
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_map_priv {int ops_list; } ;
struct bpf_map_op {int list; } ;
struct bpf_map {int dummy; } ;


 int BPF_LOADER_ERRNO__INTERNAL ;
 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct bpf_map_priv*) ;
 int PTR_ERR (struct bpf_map_priv*) ;
 char* bpf_map__name (struct bpf_map*) ;
 struct bpf_map_priv* bpf_map__priv (struct bpf_map*) ;
 scalar_t__ bpf_map__set_priv (struct bpf_map*,struct bpf_map_priv*,int ) ;
 int bpf_map_priv__clear ;
 int free (struct bpf_map_priv*) ;
 int list_add_tail (int *,int *) ;
 int pr_debug (char*,...) ;
 struct bpf_map_priv* zalloc (int) ;

__attribute__((used)) static int
bpf_map__add_op(struct bpf_map *map, struct bpf_map_op *op)
{
 const char *map_name = bpf_map__name(map);
 struct bpf_map_priv *priv = bpf_map__priv(map);

 if (IS_ERR(priv)) {
  pr_debug("Failed to get private from map %s\n", map_name);
  return PTR_ERR(priv);
 }

 if (!priv) {
  priv = zalloc(sizeof(*priv));
  if (!priv) {
   pr_debug("Not enough memory to alloc map private\n");
   return -ENOMEM;
  }
  INIT_LIST_HEAD(&priv->ops_list);

  if (bpf_map__set_priv(map, priv, bpf_map_priv__clear)) {
   free(priv);
   return -BPF_LOADER_ERRNO__INTERNAL;
  }
 }

 list_add_tail(&op->list, &priv->ops_list);
 return 0;
}
