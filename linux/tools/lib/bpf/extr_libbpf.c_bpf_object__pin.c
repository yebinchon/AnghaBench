
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_object {int dummy; } ;


 int bpf_object__pin_maps (struct bpf_object*,char const*) ;
 int bpf_object__pin_programs (struct bpf_object*,char const*) ;
 int bpf_object__unpin_maps (struct bpf_object*,char const*) ;

int bpf_object__pin(struct bpf_object *obj, const char *path)
{
 int err;

 err = bpf_object__pin_maps(obj, path);
 if (err)
  return err;

 err = bpf_object__pin_programs(obj, path);
 if (err) {
  bpf_object__unpin_maps(obj, path);
  return err;
 }

 return 0;
}
