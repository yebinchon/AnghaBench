
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btf_type {int dummy; } ;
struct btf_ext {int dummy; } ;
struct btf_dedup_opts {int dedup_table_size; scalar_t__ dont_resolve_fwds; } ;
struct TYPE_2__ {int dont_resolve_fwds; } ;
struct btf_dedup {int* map; void** hypot_map; struct btf* btf; int * dedup_table; struct btf_ext* btf_ext; TYPE_1__ opts; } ;
struct btf {int nr_types; struct btf_type** types; } ;
typedef int hashmap_hash_fn ;
typedef int __u32 ;


 void* BTF_UNPROCESSED_ID ;
 int ENOMEM ;
 struct btf_dedup* ERR_PTR (int) ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int btf_dedup_collision_hash_fn ;
 int btf_dedup_equal_fn ;
 int btf_dedup_free (struct btf_dedup*) ;
 int btf_dedup_identity_hash_fn ;
 scalar_t__ btf_is_datasec (struct btf_type*) ;
 scalar_t__ btf_is_var (struct btf_type*) ;
 struct btf_dedup* calloc (int,int) ;
 int * hashmap__new (int ,int ,int *) ;
 void* malloc (int) ;

__attribute__((used)) static struct btf_dedup *btf_dedup_new(struct btf *btf, struct btf_ext *btf_ext,
           const struct btf_dedup_opts *opts)
{
 struct btf_dedup *d = calloc(1, sizeof(struct btf_dedup));
 hashmap_hash_fn hash_fn = btf_dedup_identity_hash_fn;
 int i, err = 0;

 if (!d)
  return ERR_PTR(-ENOMEM);

 d->opts.dont_resolve_fwds = opts && opts->dont_resolve_fwds;

 if (opts && opts->dedup_table_size == 1)
  hash_fn = btf_dedup_collision_hash_fn;

 d->btf = btf;
 d->btf_ext = btf_ext;

 d->dedup_table = hashmap__new(hash_fn, btf_dedup_equal_fn, ((void*)0));
 if (IS_ERR(d->dedup_table)) {
  err = PTR_ERR(d->dedup_table);
  d->dedup_table = ((void*)0);
  goto done;
 }

 d->map = malloc(sizeof(__u32) * (1 + btf->nr_types));
 if (!d->map) {
  err = -ENOMEM;
  goto done;
 }

 d->map[0] = 0;
 for (i = 1; i <= btf->nr_types; i++) {
  struct btf_type *t = d->btf->types[i];


  if (btf_is_var(t) || btf_is_datasec(t))
   d->map[i] = i;
  else
   d->map[i] = BTF_UNPROCESSED_ID;
 }

 d->hypot_map = malloc(sizeof(__u32) * (1 + btf->nr_types));
 if (!d->hypot_map) {
  err = -ENOMEM;
  goto done;
 }
 for (i = 0; i <= btf->nr_types; i++)
  d->hypot_map[i] = BTF_UNPROCESSED_ID;

done:
 if (err) {
  btf_dedup_free(d);
  return ERR_PTR(err);
 }

 return d;
}
