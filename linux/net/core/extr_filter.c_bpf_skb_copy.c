
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (void*,void*,unsigned long) ;
 void* skb_header_pointer (void const*,unsigned long,unsigned long,void*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static unsigned long bpf_skb_copy(void *dst_buff, const void *skb,
      unsigned long off, unsigned long len)
{
 void *ptr = skb_header_pointer(skb, off, len, dst_buff);

 if (unlikely(!ptr))
  return len;
 if (ptr != dst_buff)
  memcpy(dst_buff, ptr, len);

 return 0;
}
