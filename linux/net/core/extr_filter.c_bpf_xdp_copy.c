
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (void*,void const*,unsigned long) ;

__attribute__((used)) static unsigned long bpf_xdp_copy(void *dst_buff, const void *src_buff,
      unsigned long off, unsigned long len)
{
 memcpy(dst_buff, src_buff + off, len);
 return 0;
}
