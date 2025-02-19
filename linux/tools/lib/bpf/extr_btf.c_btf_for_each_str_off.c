
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct btf_type {int name_off; } ;
struct btf_param {int name_off; } ;
struct btf_member {int name_off; } ;
struct btf_ext_info_sec {int num_info; int sec_name_off; } ;
struct btf_enum {int name_off; } ;
struct btf_dedup {TYPE_3__* btf_ext; TYPE_1__* btf; } ;
struct bpf_line_info_min {int line_off; int file_name_off; } ;
typedef int (* str_off_fn_t ) (int *,void*) ;
typedef int __u32 ;
typedef int __u16 ;
struct TYPE_5__ {int len; int rec_size; void* info; } ;
struct TYPE_6__ {TYPE_2__ line_info; } ;
struct TYPE_4__ {int nr_types; struct btf_type** types; } ;






 struct btf_enum* btf_enum (struct btf_type*) ;
 int btf_kind (struct btf_type*) ;
 struct btf_member* btf_members (struct btf_type*) ;
 struct btf_param* btf_params (struct btf_type*) ;
 int btf_vlen (struct btf_type*) ;

__attribute__((used)) static int btf_for_each_str_off(struct btf_dedup *d, str_off_fn_t fn, void *ctx)
{
 void *line_data_cur, *line_data_end;
 int i, j, r, rec_size;
 struct btf_type *t;

 for (i = 1; i <= d->btf->nr_types; i++) {
  t = d->btf->types[i];
  r = fn(&t->name_off, ctx);
  if (r)
   return r;

  switch (btf_kind(t)) {
  case 129:
  case 128: {
   struct btf_member *m = btf_members(t);
   __u16 vlen = btf_vlen(t);

   for (j = 0; j < vlen; j++) {
    r = fn(&m->name_off, ctx);
    if (r)
     return r;
    m++;
   }
   break;
  }
  case 131: {
   struct btf_enum *m = btf_enum(t);
   __u16 vlen = btf_vlen(t);

   for (j = 0; j < vlen; j++) {
    r = fn(&m->name_off, ctx);
    if (r)
     return r;
    m++;
   }
   break;
  }
  case 130: {
   struct btf_param *m = btf_params(t);
   __u16 vlen = btf_vlen(t);

   for (j = 0; j < vlen; j++) {
    r = fn(&m->name_off, ctx);
    if (r)
     return r;
    m++;
   }
   break;
  }
  default:
   break;
  }
 }

 if (!d->btf_ext)
  return 0;

 line_data_cur = d->btf_ext->line_info.info;
 line_data_end = d->btf_ext->line_info.info + d->btf_ext->line_info.len;
 rec_size = d->btf_ext->line_info.rec_size;

 while (line_data_cur < line_data_end) {
  struct btf_ext_info_sec *sec = line_data_cur;
  struct bpf_line_info_min *line_info;
  __u32 num_info = sec->num_info;

  r = fn(&sec->sec_name_off, ctx);
  if (r)
   return r;

  line_data_cur += sizeof(struct btf_ext_info_sec);
  for (i = 0; i < num_info; i++) {
   line_info = line_data_cur;
   r = fn(&line_info->file_name_off, ctx);
   if (r)
    return r;
   r = fn(&line_info->line_off, ctx);
   if (r)
    return r;
   line_data_cur += rec_size;
  }
 }

 return 0;
}
