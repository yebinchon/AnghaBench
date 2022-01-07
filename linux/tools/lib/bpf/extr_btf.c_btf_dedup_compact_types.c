
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef char btf_type ;
struct btf_dedup {size_t* hypot_map; int* map; TYPE_2__* btf; } ;
typedef size_t __u32 ;
struct TYPE_4__ {int nr_types; char* nohdr_data; char** types; size_t types_size; char* strings; int data_size; scalar_t__ data; TYPE_1__* hdr; } ;
struct TYPE_3__ {int type_off; int type_len; int str_off; int str_len; } ;


 size_t BTF_UNPROCESSED_ID ;
 int ENOMEM ;
 int btf_type_size (char*) ;
 int memmove (char*,char*,int) ;
 char** realloc (char**,int) ;

__attribute__((used)) static int btf_dedup_compact_types(struct btf_dedup *d)
{
 struct btf_type **new_types;
 __u32 next_type_id = 1;
 char *types_start, *p;
 int i, len;


 d->hypot_map[0] = 0;
 for (i = 1; i <= d->btf->nr_types; i++)
  d->hypot_map[i] = BTF_UNPROCESSED_ID;

 types_start = d->btf->nohdr_data + d->btf->hdr->type_off;
 p = types_start;

 for (i = 1; i <= d->btf->nr_types; i++) {
  if (d->map[i] != i)
   continue;

  len = btf_type_size(d->btf->types[i]);
  if (len < 0)
   return len;

  memmove(p, d->btf->types[i], len);
  d->hypot_map[i] = next_type_id;
  d->btf->types[next_type_id] = (struct btf_type *)p;
  p += len;
  next_type_id++;
 }


 d->btf->nr_types = next_type_id - 1;
 d->btf->types_size = d->btf->nr_types;
 d->btf->hdr->type_len = p - types_start;
 new_types = realloc(d->btf->types,
       (1 + d->btf->nr_types) * sizeof(struct btf_type *));
 if (!new_types)
  return -ENOMEM;
 d->btf->types = new_types;


 d->btf->hdr->str_off = p - (char *)d->btf->nohdr_data;
 memmove(p, d->btf->strings, d->btf->hdr->str_len);
 d->btf->strings = p;
 p += d->btf->hdr->str_len;

 d->btf->data_size = p - (char *)d->btf->data;
 return 0;
}
