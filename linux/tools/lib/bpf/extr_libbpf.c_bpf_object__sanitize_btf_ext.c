
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int btf_func; } ;
struct bpf_object {int * btf_ext; TYPE_1__ caps; } ;


 int btf_ext__free (int *) ;

__attribute__((used)) static void bpf_object__sanitize_btf_ext(struct bpf_object *obj)
{
 if (!obj->btf_ext)
  return;

 if (!obj->caps.btf_func) {
  btf_ext__free(obj->btf_ext);
  obj->btf_ext = ((void*)0);
 }
}
