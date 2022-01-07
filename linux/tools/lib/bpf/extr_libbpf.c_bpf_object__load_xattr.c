
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_object_load_attr {int log_level; int target_btf_path; struct bpf_object* obj; } ;
struct bpf_object {int loaded; int path; } ;


 int CHECK_ERR (int ,int,int ) ;
 int EINVAL ;
 int bpf_object__create_maps (struct bpf_object*) ;
 int bpf_object__load_progs (struct bpf_object*,int ) ;
 int bpf_object__relocate (struct bpf_object*,int ) ;
 int bpf_object__unload (struct bpf_object*) ;
 int out ;
 int pr_warning (char*,...) ;

int bpf_object__load_xattr(struct bpf_object_load_attr *attr)
{
 struct bpf_object *obj;
 int err;

 if (!attr)
  return -EINVAL;
 obj = attr->obj;
 if (!obj)
  return -EINVAL;

 if (obj->loaded) {
  pr_warning("object should not be loaded twice\n");
  return -EINVAL;
 }

 obj->loaded = 1;

 CHECK_ERR(bpf_object__create_maps(obj), err, out);
 CHECK_ERR(bpf_object__relocate(obj, attr->target_btf_path), err, out);
 CHECK_ERR(bpf_object__load_progs(obj, attr->log_level), err, out);

 return 0;
out:
 bpf_object__unload(obj);
 pr_warning("failed to load object '%s'\n", obj->path);
 return err;
}
