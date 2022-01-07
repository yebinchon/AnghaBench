
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __wsum ;


 int csum_partial (void*,int,int ) ;
 int memcpy (void*,void const*,int) ;

__wsum
csum_partial_copy(const void *src, void *dst, int len, __wsum sum)
{
 memcpy(dst, src, len);
 return csum_partial(dst, len, sum);
}
