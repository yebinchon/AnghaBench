
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int types ;
struct TYPE_2__ {int btf_datasec; } ;
struct bpf_object {TYPE_1__ caps; } ;
typedef int strs ;
typedef int __u32 ;


 int BTF_INFO_ENC (int ,int ,int) ;
 int BTF_INT_SIGNED ;
 int BTF_KIND_DATASEC ;
 int BTF_KIND_VAR ;
 int BTF_TYPE_ENC (int,int ,int) ;
 int BTF_TYPE_INT_ENC (int ,int ,int ,int,int) ;
 int BTF_VAR_SECINFO_ENC (int,int ,int) ;
 int BTF_VAR_STATIC ;
 int close (int) ;
 int libbpf__load_raw_btf (char*,int,char const*,int) ;

__attribute__((used)) static int bpf_object__probe_btf_datasec(struct bpf_object *obj)
{
 const char strs[] = "\0x\0.data";

 __u32 types[] = {

  BTF_TYPE_INT_ENC(0, BTF_INT_SIGNED, 0, 32, 4),

  BTF_TYPE_ENC(1, BTF_INFO_ENC(BTF_KIND_VAR, 0, 0), 1),
  BTF_VAR_STATIC,

  BTF_TYPE_ENC(3, BTF_INFO_ENC(BTF_KIND_DATASEC, 0, 1), 4),
  BTF_VAR_SECINFO_ENC(2, 0, 4),
 };
 int btf_fd;

 btf_fd = libbpf__load_raw_btf((char *)types, sizeof(types),
          strs, sizeof(strs));
 if (btf_fd >= 0) {
  obj->caps.btf_datasec = 1;
  close(btf_fd);
  return 1;
 }

 return 0;
}
