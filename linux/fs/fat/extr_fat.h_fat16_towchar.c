
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int __u8 ;


 int memcpy (int *,int const*,size_t) ;

__attribute__((used)) static inline void fat16_towchar(wchar_t *dst, const __u8 *src, size_t len)
{






 memcpy(dst, src, len * 2);

}
