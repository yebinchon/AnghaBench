
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btf_type {int name_off; } ;
struct bpf_core_spec {int raw_len; int len; TYPE_1__* spec; scalar_t__ offset; int * raw_spec; int btf; } ;
typedef int __u32 ;
struct TYPE_2__ {scalar_t__ idx; scalar_t__ name; int type_id; } ;


 char* btf__name_by_offset (int ,int ) ;
 struct btf_type* btf__type_by_id (int ,int ) ;
 int libbpf_print (int,char*,scalar_t__,...) ;

__attribute__((used)) static void bpf_core_dump_spec(int level, const struct bpf_core_spec *spec)
{
 const struct btf_type *t;
 const char *s;
 __u32 type_id;
 int i;

 type_id = spec->spec[0].type_id;
 t = btf__type_by_id(spec->btf, type_id);
 s = btf__name_by_offset(spec->btf, t->name_off);
 libbpf_print(level, "[%u] %s + ", type_id, s);

 for (i = 0; i < spec->raw_len; i++)
  libbpf_print(level, "%d%s", spec->raw_spec[i],
        i == spec->raw_len - 1 ? " => " : ":");

 libbpf_print(level, "%u @ &x", spec->offset);

 for (i = 0; i < spec->len; i++) {
  if (spec->spec[i].name)
   libbpf_print(level, ".%s", spec->spec[i].name);
  else
   libbpf_print(level, "[%u]", spec->spec[i].idx);
 }

}
