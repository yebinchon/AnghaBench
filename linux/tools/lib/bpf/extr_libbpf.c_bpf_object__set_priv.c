
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_object {int (* clear_priv ) (struct bpf_object*,void*) ;void* priv; } ;
typedef int (* bpf_object_clear_priv_t ) (struct bpf_object*,void*) ;


 int stub1 (struct bpf_object*,void*) ;

int bpf_object__set_priv(struct bpf_object *obj, void *priv,
    bpf_object_clear_priv_t clear_priv)
{
 if (obj->priv && obj->clear_priv)
  obj->clear_priv(obj, obj->priv);

 obj->priv = priv;
 obj->clear_priv = clear_priv;
 return 0;
}
