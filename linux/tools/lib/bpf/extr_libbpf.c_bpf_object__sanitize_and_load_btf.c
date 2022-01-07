
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_object {int * btf_ext; int * btf; } ;


 int BTF_ELF_SEC ;
 scalar_t__ bpf_object__is_btf_mandatory (struct bpf_object*) ;
 int bpf_object__sanitize_btf (struct bpf_object*) ;
 int bpf_object__sanitize_btf_ext (struct bpf_object*) ;
 int btf__free (int *) ;
 int btf__load (int *) ;
 int btf_ext__free (int *) ;
 int pr_warning (char*,int ,int) ;

__attribute__((used)) static int bpf_object__sanitize_and_load_btf(struct bpf_object *obj)
{
 int err = 0;

 if (!obj->btf)
  return 0;

 bpf_object__sanitize_btf(obj);
 bpf_object__sanitize_btf_ext(obj);

 err = btf__load(obj->btf);
 if (err) {
  pr_warning("Error loading %s into kernel: %d.\n",
      BTF_ELF_SEC, err);
  btf__free(obj->btf);
  obj->btf = ((void*)0);

  if (obj->btf_ext) {
   btf_ext__free(obj->btf_ext);
   obj->btf_ext = ((void*)0);
  }

  if (bpf_object__is_btf_mandatory(obj))
   return err;
 }
 return 0;
}
