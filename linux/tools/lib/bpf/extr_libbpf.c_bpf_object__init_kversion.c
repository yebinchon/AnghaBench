
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_object {int kern_version; int path; } ;
typedef int kver ;
typedef int __u32 ;


 int LIBBPF_ERRNO__FORMAT ;
 int memcpy (int *,void*,int) ;
 int pr_debug (char*,int ,int ) ;
 int pr_warning (char*,int ) ;

__attribute__((used)) static int
bpf_object__init_kversion(struct bpf_object *obj, void *data, size_t size)
{
 __u32 kver;

 if (size != sizeof(kver)) {
  pr_warning("invalid kver section in %s\n", obj->path);
  return -LIBBPF_ERRNO__FORMAT;
 }
 memcpy(&kver, data, sizeof(kver));
 obj->kern_version = kver;
 pr_debug("kernel version of %s is %x\n", obj->path, obj->kern_version);
 return 0;
}
