
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct bpf_sk_storage_data {int dummy; } ;


 int BPF_EXIST ;
 int BPF_F_LOCK ;
 int BPF_NOEXIST ;
 int EEXIST ;
 int ENOENT ;

__attribute__((used)) static int check_flags(const struct bpf_sk_storage_data *old_sdata,
         u64 map_flags)
{
 if (old_sdata && (map_flags & ~BPF_F_LOCK) == BPF_NOEXIST)

  return -EEXIST;

 if (!old_sdata && (map_flags & ~BPF_F_LOCK) == BPF_EXIST)

  return -ENOENT;

 return 0;
}
