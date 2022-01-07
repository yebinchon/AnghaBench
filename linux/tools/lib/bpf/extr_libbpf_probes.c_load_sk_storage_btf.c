
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int types ;
typedef int strs ;
typedef int __u32 ;


 int BTF_INFO_ENC (int ,int ,int) ;
 int BTF_INT_SIGNED ;
 int BTF_KIND_STRUCT ;
 int BTF_MEMBER_ENC (int,int,int) ;
 int BTF_TYPE_ENC (int,int ,int) ;
 int BTF_TYPE_INT_ENC (int ,int ,int ,int,int) ;
 int libbpf__load_raw_btf (char*,int,char const*,int) ;

__attribute__((used)) static int load_sk_storage_btf(void)
{
 const char strs[] = "\0bpf_spin_lock\0val\0cnt\0l";
 __u32 types[] = {

  BTF_TYPE_INT_ENC(0, BTF_INT_SIGNED, 0, 32, 4),

  BTF_TYPE_ENC(1, BTF_INFO_ENC(BTF_KIND_STRUCT, 0, 1), 4),
  BTF_MEMBER_ENC(15, 1, 0),

  BTF_TYPE_ENC(15, BTF_INFO_ENC(BTF_KIND_STRUCT, 0, 2), 8),
  BTF_MEMBER_ENC(19, 1, 0),
  BTF_MEMBER_ENC(23, 2, 32),
 };

 return libbpf__load_raw_btf((char *)types, sizeof(types),
         strs, sizeof(strs));
}
