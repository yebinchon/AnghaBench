
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btf_ext {int dummy; } ;
struct btf_dump_opts {int * ctx; } ;
struct TYPE_2__ {int * ctx; } ;
struct btf_dump {int * ident_names; int * type_names; TYPE_1__ opts; int printf_fn; struct btf_ext const* btf_ext; struct btf const* btf; } ;
struct btf {int dummy; } ;
typedef int btf_dump_printf_fn_t ;


 int ENOMEM ;
 struct btf_dump* ERR_PTR (int) ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int btf_dump__free (struct btf_dump*) ;
 struct btf_dump* calloc (int,int) ;
 void* hashmap__new (int ,int ,int *) ;
 int str_equal_fn ;
 int str_hash_fn ;

struct btf_dump *btf_dump__new(const struct btf *btf,
          const struct btf_ext *btf_ext,
          const struct btf_dump_opts *opts,
          btf_dump_printf_fn_t printf_fn)
{
 struct btf_dump *d;
 int err;

 d = calloc(1, sizeof(struct btf_dump));
 if (!d)
  return ERR_PTR(-ENOMEM);

 d->btf = btf;
 d->btf_ext = btf_ext;
 d->printf_fn = printf_fn;
 d->opts.ctx = opts ? opts->ctx : ((void*)0);

 d->type_names = hashmap__new(str_hash_fn, str_equal_fn, ((void*)0));
 if (IS_ERR(d->type_names)) {
  err = PTR_ERR(d->type_names);
  d->type_names = ((void*)0);
  btf_dump__free(d);
  return ERR_PTR(err);
 }
 d->ident_names = hashmap__new(str_hash_fn, str_equal_fn, ((void*)0));
 if (IS_ERR(d->ident_names)) {
  err = PTR_ERR(d->ident_names);
  d->ident_names = ((void*)0);
  btf_dump__free(d);
  return ERR_PTR(err);
 }

 return d;
}
