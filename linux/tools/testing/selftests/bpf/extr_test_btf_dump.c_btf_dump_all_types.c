
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_dump_opts {int dummy; } ;
struct btf_dump {int dummy; } ;
struct btf {int dummy; } ;


 scalar_t__ IS_ERR (struct btf_dump*) ;
 int PTR_ERR (struct btf_dump*) ;
 size_t btf__get_nr_types (struct btf const*) ;
 int btf_dump__dump_type (struct btf_dump*,int) ;
 int btf_dump__free (struct btf_dump*) ;
 struct btf_dump* btf_dump__new (struct btf const*,int *,struct btf_dump_opts const*,int ) ;
 int btf_dump_printf ;

__attribute__((used)) static int btf_dump_all_types(const struct btf *btf,
         const struct btf_dump_opts *opts)
{
 size_t type_cnt = btf__get_nr_types(btf);
 struct btf_dump *d;
 int err = 0, id;

 d = btf_dump__new(btf, ((void*)0), opts, btf_dump_printf);
 if (IS_ERR(d))
  return PTR_ERR(d);

 for (id = 1; id <= type_cnt; id++) {
  err = btf_dump__dump_type(d, id);
  if (err)
   goto done;
 }

done:
 btf_dump__free(d);
 return err;
}
