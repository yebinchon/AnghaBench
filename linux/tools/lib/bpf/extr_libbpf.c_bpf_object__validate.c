
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_object {scalar_t__ kern_version; int path; } ;


 int LIBBPF_ERRNO__KVERSION ;
 int pr_warning (char*,int ) ;

__attribute__((used)) static int bpf_object__validate(struct bpf_object *obj, bool needs_kver)
{
 if (needs_kver && obj->kern_version == 0) {
  pr_warning("%s doesn't provide kernel version\n",
      obj->path);
  return -LIBBPF_ERRNO__KVERSION;
 }
 return 0;
}
