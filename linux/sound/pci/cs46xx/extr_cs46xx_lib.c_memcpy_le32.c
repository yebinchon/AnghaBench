
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int __le32 ;


 int le32_to_cpu (int ) ;
 int memcpy (void*,void const*,unsigned int) ;

__attribute__((used)) static inline void memcpy_le32(void *dst, const void *src, unsigned int len)
{



 u32 *_dst = dst;
 const __le32 *_src = src;
 len /= 4;
 while (len-- > 0)
  *_dst++ = le32_to_cpu(*_src++);

}
