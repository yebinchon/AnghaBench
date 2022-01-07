
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct bpf_object {int * btf; int * btf_ext; } ;
struct TYPE_4__ {int d_size; int d_buf; } ;
typedef TYPE_1__ Elf_Data ;


 int BTF_ELF_SEC ;
 int BTF_EXT_ELF_SEC ;
 int ENOENT ;
 scalar_t__ IS_ERR (int *) ;
 int IS_ERR_OR_NULL (int *) ;
 int PTR_ERR (int *) ;
 int bpf_object__is_btf_mandatory (struct bpf_object*) ;
 int btf__finalize_data (struct bpf_object*,int *) ;
 int btf__free (int *) ;
 int * btf__new (int ,int ) ;
 int * btf_ext__new (int ,int ) ;
 int pr_debug (char*,int ,int ) ;
 int pr_warning (char*,...) ;

__attribute__((used)) static int bpf_object__init_btf(struct bpf_object *obj,
    Elf_Data *btf_data,
    Elf_Data *btf_ext_data)
{
 bool btf_required = bpf_object__is_btf_mandatory(obj);
 int err = 0;

 if (btf_data) {
  obj->btf = btf__new(btf_data->d_buf, btf_data->d_size);
  if (IS_ERR(obj->btf)) {
   pr_warning("Error loading ELF section %s: %d.\n",
       BTF_ELF_SEC, err);
   goto out;
  }
  err = btf__finalize_data(obj, obj->btf);
  if (err) {
   pr_warning("Error finalizing %s: %d.\n",
       BTF_ELF_SEC, err);
   goto out;
  }
 }
 if (btf_ext_data) {
  if (!obj->btf) {
   pr_debug("Ignore ELF section %s because its depending ELF section %s is not found.\n",
     BTF_EXT_ELF_SEC, BTF_ELF_SEC);
   goto out;
  }
  obj->btf_ext = btf_ext__new(btf_ext_data->d_buf,
         btf_ext_data->d_size);
  if (IS_ERR(obj->btf_ext)) {
   pr_warning("Error loading ELF section %s: %ld. Ignored and continue.\n",
       BTF_EXT_ELF_SEC, PTR_ERR(obj->btf_ext));
   obj->btf_ext = ((void*)0);
   goto out;
  }
 }
out:
 if (err || IS_ERR(obj->btf)) {
  if (btf_required)
   err = err ? : PTR_ERR(obj->btf);
  else
   err = 0;
  if (!IS_ERR_OR_NULL(obj->btf))
   btf__free(obj->btf);
  obj->btf = ((void*)0);
 }
 if (btf_required && !obj->btf) {
  pr_warning("BTF is required, but is missing or corrupted.\n");
  return err == 0 ? -ENOENT : err;
 }
 return 0;
}
