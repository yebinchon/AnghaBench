
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; size_t obj_buf_sz; int maps_shndx; int btf_maps_shndx; int data_shndx; int rodata_shndx; int bss_shndx; void* obj_buf; } ;
struct bpf_object {int loaded; int list; TYPE_1__ efile; int name; int path; } ;


 int ENOMEM ;
 struct bpf_object* ERR_PTR (int ) ;
 int INIT_LIST_HEAD (int *) ;
 int basename (void*) ;
 int bpf_objects_list ;
 struct bpf_object* calloc (int,scalar_t__) ;
 int list_add (int *,int *) ;
 int pr_warning (char*,char const*) ;
 char* strchr (int ,char) ;
 int strcpy (int ,char const*) ;
 scalar_t__ strlen (char const*) ;
 int strncpy (int ,int ,int) ;

__attribute__((used)) static struct bpf_object *bpf_object__new(const char *path,
       void *obj_buf,
       size_t obj_buf_sz)
{
 struct bpf_object *obj;
 char *end;

 obj = calloc(1, sizeof(struct bpf_object) + strlen(path) + 1);
 if (!obj) {
  pr_warning("alloc memory failed for %s\n", path);
  return ERR_PTR(-ENOMEM);
 }

 strcpy(obj->path, path);

 strncpy(obj->name, basename((void *)path), sizeof(obj->name) - 1);
 end = strchr(obj->name, '.');
 if (end)
  *end = 0;

 obj->efile.fd = -1;






 obj->efile.obj_buf = obj_buf;
 obj->efile.obj_buf_sz = obj_buf_sz;
 obj->efile.maps_shndx = -1;
 obj->efile.btf_maps_shndx = -1;
 obj->efile.data_shndx = -1;
 obj->efile.rodata_shndx = -1;
 obj->efile.bss_shndx = -1;

 obj->loaded = 0;

 INIT_LIST_HEAD(&obj->list);
 list_add(&obj->list, &bpf_objects_list);
 return obj;
}
