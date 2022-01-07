
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (void*,void const*,unsigned long) ;

__attribute__((used)) static inline unsigned long
memcpy_common(void *dst, const void *src, unsigned long n)
{
 memcpy(dst, src, n);
 return 0;
}
