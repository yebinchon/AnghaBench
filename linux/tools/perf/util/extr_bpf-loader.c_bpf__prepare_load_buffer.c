
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_object {int dummy; } ;


 int EINVAL ;
 struct bpf_object* ERR_PTR (int ) ;
 scalar_t__ IS_ERR_OR_NULL (struct bpf_object*) ;
 struct bpf_object* bpf_object__open_buffer (void*,size_t,char const*) ;
 int libbpf_initialized ;
 int libbpf_perf_print ;
 int libbpf_set_print (int ) ;
 int pr_debug (char*) ;

struct bpf_object *
bpf__prepare_load_buffer(void *obj_buf, size_t obj_buf_sz, const char *name)
{
 struct bpf_object *obj;

 if (!libbpf_initialized) {
  libbpf_set_print(libbpf_perf_print);
  libbpf_initialized = 1;
 }

 obj = bpf_object__open_buffer(obj_buf, obj_buf_sz, name);
 if (IS_ERR_OR_NULL(obj)) {
  pr_debug("bpf: failed to load buffer\n");
  return ERR_PTR(-EINVAL);
 }

 return obj;
}
