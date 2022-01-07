
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_object {int dummy; } ;
typedef int bf ;


 int bpf_object__load (struct bpf_object*) ;
 int libbpf_strerror (int,char*,int) ;
 int pr_debug (char*,int,char*) ;

int bpf__load(struct bpf_object *obj)
{
 int err;

 err = bpf_object__load(obj);
 if (err) {
  char bf[128];
  libbpf_strerror(err, bf, sizeof(bf));
  pr_debug("bpf: load objects failed: err=%d: (%s)\n", err, bf);
  return err;
 }
 return 0;
}
