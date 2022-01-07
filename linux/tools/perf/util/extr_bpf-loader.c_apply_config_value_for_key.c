
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;


 int BPF_ANY ;
 int BPF_LOADER_ERRNO__OBJCONF_MAP_VALUESIZE ;
 int bpf_map_update_elem (int,void*,int *,int ) ;
 int errno ;
 int pr_debug (char*) ;

__attribute__((used)) static int
apply_config_value_for_key(int map_fd, void *pkey,
      size_t val_size, u64 val)
{
 int err = 0;

 switch (val_size) {
 case 1: {
  u8 _val = (u8)(val);
  err = bpf_map_update_elem(map_fd, pkey, &_val, BPF_ANY);
  break;
 }
 case 2: {
  u16 _val = (u16)(val);
  err = bpf_map_update_elem(map_fd, pkey, &_val, BPF_ANY);
  break;
 }
 case 4: {
  u32 _val = (u32)(val);
  err = bpf_map_update_elem(map_fd, pkey, &_val, BPF_ANY);
  break;
 }
 case 8: {
  err = bpf_map_update_elem(map_fd, pkey, &val, BPF_ANY);
  break;
 }
 default:
  pr_debug("ERROR: invalid value size\n");
  return -BPF_LOADER_ERRNO__OBJCONF_MAP_VALUESIZE;
 }
 if (err && errno)
  err = -errno;
 return err;
}
