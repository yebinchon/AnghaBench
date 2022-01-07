
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp_name ;
struct bpf_object {int dummy; } ;


 struct bpf_object* __bpf_object__open (char const*,void*,size_t,int,int) ;
 int pr_debug (char*,char const*) ;
 int snprintf (char*,int,char*,unsigned long,unsigned long) ;

struct bpf_object *bpf_object__open_buffer(void *obj_buf,
        size_t obj_buf_sz,
        const char *name)
{
 char tmp_name[64];


 if (!obj_buf || obj_buf_sz <= 0)
  return ((void*)0);

 if (!name) {
  snprintf(tmp_name, sizeof(tmp_name), "%lx-%lx",
    (unsigned long)obj_buf,
    (unsigned long)obj_buf_sz);
  name = tmp_name;
 }
 pr_debug("loading object '%s' from buffer\n", name);

 return __bpf_object__open(name, obj_buf, obj_buf_sz, 1, 1);
}
