
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ BPF_F_NO_PREALLOC ;
 scalar_t__ BPF_MAP_TYPE_HASH ;
 int bpf_create_map (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int errno ;
 int printf (char*,char*) ;
 scalar_t__ skip_unsupported_map (scalar_t__) ;
 char* strerror (int ) ;

__attribute__((used)) static int __create_map(uint32_t type, uint32_t size_key,
   uint32_t size_value, uint32_t max_elem,
   uint32_t extra_flags)
{
 int fd;

 fd = bpf_create_map(type, size_key, size_value, max_elem,
       (type == BPF_MAP_TYPE_HASH ?
        BPF_F_NO_PREALLOC : 0) | extra_flags);
 if (fd < 0) {
  if (skip_unsupported_map(type))
   return -1;
  printf("Failed to create hash map '%s'!\n", strerror(errno));
 }

 return fd;
}
