
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btf_type {int name_off; } ;
struct TYPE_2__ {int btf_maps_shndx; int maps_shndx; int elf; } ;
struct bpf_object {TYPE_1__ efile; int btf; } ;
typedef int Elf_Scn ;
typedef int Elf_Data ;


 int EINVAL ;
 int ENOENT ;
 int MAPS_ELF_SEC ;
 int bpf_object__init_user_btf_map (struct bpf_object*,struct btf_type const*,int,int ,int *,int) ;
 int btf__get_nr_types (int ) ;
 char* btf__name_by_offset (int ,int ) ;
 struct btf_type* btf__type_by_id (int ,int) ;
 int btf_is_datasec (struct btf_type const*) ;
 int btf_vlen (struct btf_type const*) ;
 int * elf_getdata (int *,int *) ;
 int * elf_getscn (int ,int ) ;
 int pr_warning (char*,int ,...) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int bpf_object__init_user_btf_maps(struct bpf_object *obj, bool strict)
{
 const struct btf_type *sec = ((void*)0);
 int nr_types, i, vlen, err;
 const struct btf_type *t;
 const char *name;
 Elf_Data *data;
 Elf_Scn *scn;

 if (obj->efile.btf_maps_shndx < 0)
  return 0;

 scn = elf_getscn(obj->efile.elf, obj->efile.btf_maps_shndx);
 if (scn)
  data = elf_getdata(scn, ((void*)0));
 if (!scn || !data) {
  pr_warning("failed to get Elf_Data from map section %d (%s)\n",
      obj->efile.maps_shndx, MAPS_ELF_SEC);
  return -EINVAL;
 }

 nr_types = btf__get_nr_types(obj->btf);
 for (i = 1; i <= nr_types; i++) {
  t = btf__type_by_id(obj->btf, i);
  if (!btf_is_datasec(t))
   continue;
  name = btf__name_by_offset(obj->btf, t->name_off);
  if (strcmp(name, MAPS_ELF_SEC) == 0) {
   sec = t;
   break;
  }
 }

 if (!sec) {
  pr_warning("DATASEC '%s' not found.\n", MAPS_ELF_SEC);
  return -ENOENT;
 }

 vlen = btf_vlen(sec);
 for (i = 0; i < vlen; i++) {
  err = bpf_object__init_user_btf_map(obj, sec, i,
          obj->efile.btf_maps_shndx,
          data, strict);
  if (err)
   return err;
 }

 return 0;
}
