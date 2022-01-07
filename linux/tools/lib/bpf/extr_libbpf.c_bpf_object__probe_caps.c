
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_object {int dummy; } ;


 int ARRAY_SIZE (int (*) (struct bpf_object*)) ;
 int bpf_object__probe_btf_datasec ;
 int bpf_object__probe_btf_func ;
 int bpf_object__probe_global_data ;
 int bpf_object__probe_name ;
 int pr_debug (char*,int,int) ;
 int stub1 (struct bpf_object*) ;

__attribute__((used)) static int
bpf_object__probe_caps(struct bpf_object *obj)
{
 int (*probe_fn[])(struct bpf_object *obj) = {
  bpf_object__probe_name,
  bpf_object__probe_global_data,
  bpf_object__probe_btf_func,
  bpf_object__probe_btf_datasec,
 };
 int i, ret;

 for (i = 0; i < ARRAY_SIZE(probe_fn); i++) {
  ret = probe_fn[i](obj);
  if (ret < 0)
   pr_debug("Probe #%d failed with %d.\n", i, ret);
 }

 return 0;
}
