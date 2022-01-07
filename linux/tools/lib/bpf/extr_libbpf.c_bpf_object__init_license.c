
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_object {int license; int path; } ;


 int memcpy (int ,void*,int ) ;
 int min (size_t,int) ;
 int pr_debug (char*,int ,int ) ;

__attribute__((used)) static int
bpf_object__init_license(struct bpf_object *obj, void *data, size_t size)
{
 memcpy(obj->license, data, min(size, sizeof(obj->license) - 1));
 pr_debug("license of %s is %s\n", obj->path, obj->license);
 return 0;
}
