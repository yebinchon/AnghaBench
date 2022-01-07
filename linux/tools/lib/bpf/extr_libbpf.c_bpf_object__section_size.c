
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* rodata; TYPE_2__* bss; TYPE_1__* data; } ;
struct bpf_object {TYPE_4__ efile; } ;
typedef size_t __u32 ;
struct TYPE_7__ {size_t d_size; } ;
struct TYPE_6__ {size_t d_size; } ;
struct TYPE_5__ {size_t d_size; } ;


 int EINVAL ;
 int ENOENT ;
 int bpf_object_search_section_size (struct bpf_object const*,char const*,size_t*) ;
 int strcmp (char const*,char*) ;

int bpf_object__section_size(const struct bpf_object *obj, const char *name,
        __u32 *size)
{
 int ret = -ENOENT;
 size_t d_size;

 *size = 0;
 if (!name) {
  return -EINVAL;
 } else if (!strcmp(name, ".data")) {
  if (obj->efile.data)
   *size = obj->efile.data->d_size;
 } else if (!strcmp(name, ".bss")) {
  if (obj->efile.bss)
   *size = obj->efile.bss->d_size;
 } else if (!strcmp(name, ".rodata")) {
  if (obj->efile.rodata)
   *size = obj->efile.rodata->d_size;
 } else {
  ret = bpf_object_search_section_size(obj, name, &d_size);
  if (!ret)
   *size = d_size;
 }

 return *size ? 0 : ret;
}
